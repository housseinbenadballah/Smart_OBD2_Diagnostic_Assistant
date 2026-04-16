"""
Génération du Cahier des Charges - Smart OBD-II Diagnostic Assistant (version ELM327 + Groq)
Nécessite : pip install reportlab
"""

from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.units import mm
from reportlab.lib import colors
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle,
    PageBreak, KeepTogether, ListFlowable, ListItem
)
from reportlab.lib.enums import TA_LEFT, TA_CENTER, TA_JUSTIFY
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
import os

# ============================================================
# 1. Configuration du document et des styles
# ============================================================

def setup_styles():
    """Crée et retourne les styles personnalisés."""
    styles = getSampleStyleSheet()
    
    # Style pour le titre principal
    styles.add(ParagraphStyle(
        name='MainTitle',
        parent=styles['Title'],
        fontSize=20,
        textColor=colors.HexColor('#1a1a2e'),
        spaceAfter=12,
        alignment=TA_CENTER
    ))
    
    # Style pour les titres de section (1., 2., etc.)
    styles.add(ParagraphStyle(
        name='Heading1',
        parent=styles['Heading1'],
        fontSize=16,
        textColor=colors.HexColor('#16213e'),
        spaceBefore=12,
        spaceAfter=8,
        keepWithNext=True
    ))
    
    # Style pour les sous-titres (1.1., etc.)
    styles.add(ParagraphStyle(
        name='Heading2',
        parent=styles['Heading2'],
        fontSize=13,
        textColor=colors.HexColor('#0f3460'),
        spaceBefore=8,
        spaceAfter=6,
        keepWithNext=True
    ))
    
    # Style pour les paragraphes normaux
    styles.add(ParagraphStyle(
        name='CustomNormal',
        parent=styles['Normal'],
        fontSize=10,
        alignment=TA_JUSTIFY,
        spaceAfter=4,
        leading=14
    ))
    
    # Style pour les cellules de tableau
    styles.add(ParagraphStyle(
        name='TableCell',
        parent=styles['Normal'],
        fontSize=9,
        alignment=TA_LEFT,
        leading=12
    ))
    
    # Style pour les en-têtes de tableau
    styles.add(ParagraphStyle(
        name='TableHeader',
        parent=styles['Normal'],
        fontSize=10,
        textColor=colors.white,
        alignment=TA_CENTER,
        fontName='Helvetica-Bold'
    ))
    
    return styles

# ============================================================
# 2. Fonctions de création des éléments PDF
# ============================================================

def create_header(story, styles):
    """Crée l'en-tête du document."""
    header_data = [
        [Paragraph("<b>Référence :</b> CDC-P15-02", styles['CustomNormal']),
         Paragraph("<b>Version :</b> 2.0", styles['CustomNormal']),
         Paragraph("<b>Date :</b> 13 avril 2026", styles['CustomNormal'])],
    ]
    header_table = Table(header_data, colWidths=[80*mm, 40*mm, 60*mm])
    header_table.setStyle(TableStyle([
        ('ALIGN', (0,0), (-1,-1), 'LEFT'),
        ('VALIGN', (0,0), (-1,-1), 'MIDDLE'),
        ('TOPPADDING', (0,0), (-1,-1), 5),
        ('BOTTOMPADDING', (0,0), (-1,-1), 5),
    ]))
    story.append(header_table)
    story.append(Spacer(1, 10*mm))
    
    # Titre principal
    story.append(Paragraph("Cahier des Charges – Version Révisée", styles['MainTitle']))
    story.append(Paragraph("Smart OBD‑II Diagnostic Assistant", styles['MainTitle']))
    story.append(Paragraph("Utilisation d’un adaptateur ELM327 et de l’API Groq (Llama 3 70B)", styles['Heading2']))
    story.append(Spacer(1, 5*mm))

def create_section(story, styles, number, title, content_paragraphs):
    """Ajoute une section avec titre et paragraphes."""
    story.append(Paragraph(f"{number}. {title}", styles['Heading1']))
    for para in content_paragraphs:
        story.append(Paragraph(para, styles['CustomNormal']))
    story.append(Spacer(1, 4*mm))

def create_subsection(story, styles, number, title, content_paragraphs):
    """Ajoute une sous-section."""
    story.append(Paragraph(f"{number} {title}", styles['Heading2']))
    for para in content_paragraphs:
        story.append(Paragraph(para, styles['CustomNormal']))
    story.append(Spacer(1, 3*mm))

def create_requirement_table(story, styles, title, requirements):
    """Crée un tableau d'exigences avec colonnes ID, Exigence, Priorité."""
    story.append(Paragraph(title, styles['Heading2']))
    
    data = [[Paragraph("<b>ID</b>", styles['TableHeader']),
             Paragraph("<b>Exigence</b>", styles['TableHeader']),
             Paragraph("<b>Priorité</b>", styles['TableHeader'])]]
    
    for req in requirements:
        data.append([
            Paragraph(req['id'], styles['TableCell']),
            Paragraph(req['desc'], styles['TableCell']),
            Paragraph(req['priority'], styles['TableCell'])
        ])
    
    # Ajustement dynamique des largeurs de colonnes
    col_widths = [20*mm, 120*mm, 30*mm]
    table = Table(data, colWidths=col_widths, repeatRows=1)
    table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#2c3e50')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('ALIGN', (0,0), (-1,-1), 'LEFT'),
        ('VALIGN', (0,0), (-1,-1), 'TOP'),
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'),
        ('FONTSIZE', (0,0), (-1,0), 10),
        ('BOTTOMPADDING', (0,0), (-1,0), 8),
        ('TOPPADDING', (0,0), (-1,0), 8),
        ('GRID', (0,0), (-1,-1), 0.5, colors.grey),
        ('BACKGROUND', (0,1), (-1,-1), colors.whitesmoke),
    ]))
    story.append(table)
    story.append(Spacer(1, 5*mm))

def create_risk_table(story, styles, risks):
    """Crée le tableau des risques."""
    story.append(Paragraph("7. Contraintes et Risques", styles['Heading1']))
    
    data = [[Paragraph("<b>Risque</b>", styles['TableHeader']),
             Paragraph("<b>Probabilité</b>", styles['TableHeader']),
             Paragraph("<b>Impact</b>", styles['TableHeader']),
             Paragraph("<b>Plan d'atténuation</b>", styles['TableHeader'])]]
    
    for r in risks:
        data.append([
            Paragraph(r['risk'], styles['TableCell']),
            Paragraph(r['prob'], styles['TableCell']),
            Paragraph(r['impact'], styles['TableCell']),
            Paragraph(r['mitigation'], styles['TableCell'])
        ])
    
    col_widths = [60*mm, 25*mm, 20*mm, 70*mm]
    table = Table(data, colWidths=col_widths, repeatRows=1)
    table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#c0392b')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('ALIGN', (0,0), (-1,-1), 'LEFT'),
        ('VALIGN', (0,0), (-1,-1), 'TOP'),
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'),
        ('FONTSIZE', (0,0), (-1,0), 9),
        ('BOTTOMPADDING', (0,0), (-1,0), 6),
        ('TOPPADDING', (0,0), (-1,0), 6),
        ('GRID', (0,0), (-1,-1), 0.5, colors.grey),
        ('BACKGROUND', (0,1), (-1,-1), colors.whitesmoke),
    ]))
    story.append(table)
    story.append(Spacer(1, 5*mm))

def create_planning_table(story, styles, phases):
    """Crée le tableau de planning."""
    story.append(Paragraph("6. Planning Prévisionnel", styles['Heading1']))
    
    data = [[Paragraph("<b>Phase</b>", styles['TableHeader']),
             Paragraph("<b>Tâches</b>", styles['TableHeader']),
             Paragraph("<b>Durée estimée</b>", styles['TableHeader'])]]
    
    for p in phases:
        data.append([
            Paragraph(p['phase'], styles['TableCell']),
            Paragraph(p['tasks'], styles['TableCell']),
            Paragraph(p['duration'], styles['TableCell'])
        ])
    
    col_widths = [20*mm, 110*mm, 40*mm]
    table = Table(data, colWidths=col_widths, repeatRows=1)
    table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#2980b9')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('ALIGN', (0,0), (-1,-1), 'LEFT'),
        ('VALIGN', (0,0), (-1,-1), 'TOP'),
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'),
        ('FONTSIZE', (0,0), (-1,0), 10),
        ('BOTTOMPADDING', (0,0), (-1,0), 8),
        ('TOPPADDING', (0,0), (-1,0), 8),
        ('GRID', (0,0), (-1,-1), 0.5, colors.grey),
        ('BACKGROUND', (0,1), (-1,-1), colors.whitesmoke),
    ]))
    story.append(table)
    story.append(Spacer(1, 5*mm))

def create_livrables_table(story, styles, livrables):
    """Crée le tableau des livrables."""
    story.append(Paragraph("5. Livrables", styles['Heading1']))
    
    data = [[Paragraph("<b>Livrable</b>", styles['TableHeader']),
             Paragraph("<b>Description</b>", styles['TableHeader']),
             Paragraph("<b>Échéance indicative</b>", styles['TableHeader'])]]
    
    for l in livrables:
        data.append([
            Paragraph(l['name'], styles['TableCell']),
            Paragraph(l['desc'], styles['TableCell']),
            Paragraph(l['deadline'], styles['TableCell'])
        ])
    
    col_widths = [50*mm, 85*mm, 40*mm]
    table = Table(data, colWidths=col_widths, repeatRows=1)
    table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#27ae60')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('ALIGN', (0,0), (-1,-1), 'LEFT'),
        ('VALIGN', (0,0), (-1,-1), 'TOP'),
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'),
        ('FONTSIZE', (0,0), (-1,0), 10),
        ('BOTTOMPADDING', (0,0), (-1,0), 8),
        ('TOPPADDING', (0,0), (-1,0), 8),
        ('GRID', (0,0), (-1,-1), 0.5, colors.grey),
        ('BACKGROUND', (0,1), (-1,-1), colors.whitesmoke),
    ]))
    story.append(table)
    story.append(Spacer(1, 5*mm))

def create_validation_section(story, styles):
    """Crée la section de validation."""
    story.append(Paragraph("Validation", styles['Heading1']))
    story.append(Paragraph("Ce cahier des charges révisé intègre les modifications demandées le 13 avril 2026.", styles['CustomNormal']))
    story.append(Spacer(1, 10*mm))
    
    data = [
        [Paragraph("<b>Rôle</b>", styles['TableHeader']),
         Paragraph("<b>Nom</b>", styles['TableHeader']),
         Paragraph("<b>Date</b>", styles['TableHeader']),
         Paragraph("<b>Signature</b>", styles['TableHeader'])],
        [Paragraph("Chef de projet", styles['TableCell']), "", "", ""],
        [Paragraph("Responsable technique", styles['TableCell']), "", "", ""],
        [Paragraph("Commanditaire", styles['TableCell']), "", "", ""],
    ]
    table = Table(data, colWidths=[50*mm, 50*mm, 30*mm, 50*mm])
    table.setStyle(TableStyle([
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#34495e')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('ALIGN', (0,0), (-1,-1), 'LEFT'),
        ('VALIGN', (0,0), (-1,-1), 'MIDDLE'),
        ('GRID', (0,0), (-1,-1), 0.5, colors.grey),
        ('BACKGROUND', (0,1), (-1,-1), colors.whitesmoke),
        ('LINEABOVE', (0,0), (-1,0), 1, colors.black),
        ('LINEBELOW', (0,-1), (-1,-1), 1, colors.black),
    ]))
    story.append(table)

# ============================================================
# 3. Données du cahier des charges
# ============================================================

def get_document_data():
    """Retourne toutes les données textuelles du cahier des charges."""
    
    # --- Section 1 ---
    sec1_content = [
        "Le diagnostic des véhicules modernes repose sur l’interprétation de codes défauts (DTC) et de paramètres capteurs via la prise OBD‑II. Pour les mécaniciens et les conducteurs avertis, cette interprétation reste complexe car elle nécessite une connaissance approfondie des systèmes embarqués et une analyse croisée de multiples paramètres.",
        "Le projet Smart OBD‑II Diagnostic Assistant vise à automatiser cette analyse en combinant :",
        "• Une interface matérielle standard (adaptateur ELM327) pour la lecture du bus CAN/OBD‑II.",
        "• Une couche d’intelligence artificielle avancée utilisant l’API Groq (modèle Llama 3 70B) pour interpréter les données et générer des recommandations de réparation.",
        "• Une interface utilisateur intuitive (mobile/web) pour visualiser l’état du véhicule et les diagnostics.",
        "<b>Objectifs :</b>",
        "• Réduire le temps de diagnostic en fournissant une analyse rapide et précise.",
        "• Améliorer la fiabilité du diagnostic en croisant DTC, paramètres temps réel et trames figées.",
        "• Démocratiser l’accès au diagnostic grâce à une application grand public et un outil professionnel.",
        "• Offrir des recommandations actionnables (étapes de dépannage, pièces suspectes, tests à effectuer)."
    ]
    
    # --- Section 2 ---
    sec2_content = [
        "<b>2.1. Inclus dans le projet</b>",
        "• Développement d’un module logiciel (Android / Web) communiquant avec un adaptateur ELM327 (Bluetooth SPP ou Wi‑Fi).",
        "• Implémentation du parsing complet des trames OBD‑II (PID, DTC, Freeze Frames) en utilisant les commandes AT et OBD de l’ELM327.",
        "• Développement d’un backend léger ou d’une logique embarquée pour formater les données et interroger l’API Groq.",
        "• Intégration de l’API Groq avec un prompt engineering spécifique à l’analyse automobile.",
        "• Interface utilisateur affichant les résultats enrichis par l’IA (explications naturelles, étapes de dépannage).",
        "• Documentation technique et utilisateur.",
        "<b>2.2. Exclus du projet</b>",
        "• Conception électronique d’un dongle OBD‑II personnalisé (l’ELM327 est un composant sur étagère).",
        "• Reprogrammation de calculateurs (ECU tuning).",
        "• Support des protocoles propriétaires non supportés par les commandes ELM327 standard."
    ]
    
    # Exigences Fonctionnelles
    f1_requirements = [
        {"id": "F‑01", "desc": "L’application doit pouvoir se connecter à un adaptateur ELM327 compatible Bluetooth SPP ou Wi‑Fi.", "priority": "Obligatoire"},
        {"id": "F‑02", "desc": "Le système doit initialiser automatiquement l’ELM327 (commandes ATZ, ATE0, ATL0, ATH1, ATSP0).", "priority": "Obligatoire"},
        {"id": "F‑03", "desc": "Le système doit supporter la récupération des DTC (Mode 03) et l’effacement des défauts (Mode 04).", "priority": "Obligatoire"},
        {"id": "F‑04", "desc": "Le système doit interroger cycliquement une liste configurable de PID et afficher les valeurs en temps réel.", "priority": "Obligatoire"},
        {"id": "F‑05", "desc": "Le système doit pouvoir récupérer les Freeze Frames associées à un DTC (Mode 02).", "priority": "Souhaitable"},
        {"id": "F‑06", "desc": "En cas de perte de connexion, l’application doit tenter une reconnexion automatique.", "priority": "Obligatoire"},
    ]
    
    f2_requirements = [
        {"id": "F‑07", "desc": "L’application doit envoyer à l’API Groq un prompt structuré contenant : liste des DTC, valeurs anormales de PID, contexte du véhicule.", "priority": "Obligatoire"},
        {"id": "F‑08", "desc": "Le modèle Llama 3 70B doit retourner une analyse comprenant : description, causes probables, recommandations de tests et réparations.", "priority": "Obligatoire"},
        {"id": "F‑09", "desc": "Le système doit gérer un cache local pour éviter des appels répétés à l’API pour le même état.", "priority": "Souhaitable"},
        {"id": "F‑10", "desc": "Le temps de réponse de l’API Groq ne doit pas dépasser 5 secondes pour une requête de diagnostic complète.", "priority": "Obligatoire"},
        {"id": "F‑11", "desc": "En cas d’échec de l’API, le système doit afficher un message d’erreur et proposer une analyse hors ligne basée sur des descriptions génériques de DTC.", "priority": "Obligatoire"},
    ]
    
    f3_requirements = [
        {"id": "F‑12", "desc": "L’interface doit comporter un écran « Tableau de bord » affichant les PID en temps réel sous forme de jauges et graphiques.", "priority": "Obligatoire"},
        {"id": "F‑13", "desc": "Un bouton « Diagnostic IA » déclenche l’analyse complète et affiche la réponse formatée de l’IA.", "priority": "Obligatoire"},
        {"id": "F‑14", "desc": "Le rapport de diagnostic doit pouvoir être partagé (format texte ou PDF) par e‑mail ou messagerie.", "priority": "Souhaitable"},
        {"id": "F‑15", "desc": "L’application doit être compatible Android (min API 26) et/ou exécutable dans un navigateur web (PWA).", "priority": "Obligatoire"},
    ]
    
    f4_requirements = [
        {"id": "F‑16", "desc": "Communication avec l’ELM327 : Bluetooth Classic (RFCOMM) ou Wi‑Fi (TCP).", "priority": "Obligatoire"},
        {"id": "F‑17", "desc": "Communication avec l’API Groq : HTTPS avec clé API sécurisée stockée côté client ou via proxy backend.", "priority": "Obligatoire"},
    ]
    
    # Livrables
    livrables = [
        {"name": "Module de connexion ELM327", "desc": "Bibliothèque ou code intégré gérant la connexion Bluetooth/Wi‑Fi et les commandes AT/OBD de base.", "deadline": "Fin phase 1 (mois 1)"},
        {"name": "Analyseur de trames OBD", "desc": "Composant logiciel décodant les réponses hexadécimales en valeurs exploitables.", "deadline": "Fin phase 2 (mois 1.5)"},
        {"name": "Intégration API Groq", "desc": "Fonction d’envoi de prompt et de traitement de la réponse avec cache.", "deadline": "Fin phase 3 (mois 2)"},
        {"name": "Application Android / Web", "desc": "Interface utilisateur complète avec tableau de bord temps réel et diagnostic IA.", "deadline": "Fin phase 4 (mois 3)"},
        {"name": "Backend optionnel", "desc": "API sécurisée servant de proxy Groq et gérant l’historique.", "deadline": "Fin phase 5 (mois 3.5)"},
        {"name": "Documentation utilisateur", "desc": "Guide d’installation et d’utilisation de l’application et de l’adaptateur.", "deadline": "Fin phase 6 (mois 4)"},
        {"name": "Rapport de test", "desc": "Résultats de tests sur véhicules réels avec différents types de pannes.", "deadline": "Fin phase 6 (mois 4)"},
    ]
    
    # Planning
    phases = [
        {"phase": "1", "tasks": "Étude du protocole ELM327, spécification des commandes, choix librairie de communication.", "duration": "2 semaines"},
        {"phase": "2", "tasks": "Développement du module OBD (connexion + parsing PID/DTC).", "duration": "3 semaines"},
        {"phase": "3", "tasks": "Intégration de l’API Groq, développement du prompt et gestion des réponses.", "duration": "2 semaines"},
        {"phase": "4", "tasks": "Développement de l’interface utilisateur (tableau de bord, affichage IA).", "duration": "4 semaines"},
        {"phase": "5", "tasks": "Implémentation du cache local, historique, et export PDF.", "duration": "2 semaines"},
        {"phase": "6", "tasks": "Tests sur véhicules, ajustements, documentation.", "duration": "3 semaines"},
    ]
    
    # Risques
    risks = [
        {"risk": "Variabilité des adaptateurs ELM327 (clones chinois avec firmware buggé)", "prob": "Élevée", "impact": "Moyen", "mitigation": "Tester avec plusieurs modèles courants. Prévoir procédure de détection et configuration automatique."},
        {"risk": "Latence réseau ou indisponibilité de l’API Groq", "prob": "Faible", "impact": "Fort", "mitigation": "Mécanisme de fallback avec base de connaissances locale de DTC génériques."},
        {"risk": "Coût d’utilisation de l’API Groq", "prob": "Élevé (selon usage)", "impact": "Moyen", "mitigation": "Cache agressif. Limiter requêtes par utilisateur. Utiliser modèle 8B pour questions simples."},
        {"risk": "Interprétations erronées de l’IA", "prob": "Moyenne", "impact": "Critique", "mitigation": "Avertissement clair que les recommandations sont indicatives."},
        {"risk": "Complexité du parsing OBD (réponses multilignes)", "prob": "Moyenne", "impact": "Moyen", "mitigation": "Utiliser une machine à états robuste pour traitement asynchrone."},
    ]
    
    return {
        'sec1': sec1_content,
        'sec2': sec2_content,
        'f1_reqs': f1_requirements,
        'f2_reqs': f2_requirements,
        'f3_reqs': f3_requirements,
        'f4_reqs': f4_requirements,
        'livrables': livrables,
        'phases': phases,
        'risks': risks
    }

# ============================================================
# 4. Construction du document PDF
# ============================================================

def build_pdf(filename="Cahier_des_Charges_OBD_IA.pdf"):
    """Génère le PDF complet."""
    doc = SimpleDocTemplate(
        filename,
        pagesize=A4,
        leftMargin=20*mm,
        rightMargin=20*mm,
        topMargin=20*mm,
        bottomMargin=20*mm
    )
    
    styles = setup_styles()
    data = get_document_data()
    
    story = []
    
    # En-tête
    create_header(story, styles)
    
    # Section 1 : Contexte et Objectifs
    create_section(story, styles, "1", "Contexte et Objectifs du Projet", data['sec1'])
    
    # Section 2 : Périmètre du Projet
    create_section(story, styles, "2", "Périmètre du Projet", data['sec2'])
    
    # Section 3 : Spécifications Fonctionnelles
    story.append(Paragraph("3. Spécifications Fonctionnelles", styles['Heading1']))
    create_requirement_table(story, styles, "3.1. Acquisition des Données via ELM327", data['f1_reqs'])
    create_requirement_table(story, styles, "3.2. Traitement des Données et Intelligence Artificielle (Groq)", data['f2_reqs'])
    create_requirement_table(story, styles, "3.3. Interface Utilisateur", data['f3_reqs'])
    create_requirement_table(story, styles, "3.4. Communication et Connectivité", data['f4_reqs'])
    story.append(Spacer(1, 5*mm))
    
    # Section 4 : Spécifications Techniques (résumé texte)
    story.append(Paragraph("4. Spécifications Techniques", styles['Heading1']))
    tech_para = [
        "<b>4.1. Architecture Générale</b><br/>Le système est centré sur une application mobile/web communiquant directement avec l’adaptateur ELM327 (Bluetooth/Wi‑Fi) et l’API Groq (Internet).",
        "<b>4.2. Composants Matériels (Externes)</b><br/>Adaptateur OBD‑II ELM327 (version 1.5 ou 2.1) compatible Bluetooth ou Wi‑Fi. Appareil utilisateur : smartphone Android ou tablette/PC.",
        "<b>4.3. Contraintes Logicielles</b><br/>• Communication ELM327 : bibliothèque Bluetooth SPP (Android) ou Web Bluetooth API.<br/>• Parsing OBD‑II : logique métier en Dart/Kotlin/TypeScript.<br/>• Appel API Groq : client HTTP compatible OpenAI.<br/>• Base de données locale : SQLite ou SharedPreferences pour cache.",
        "<b>4.4. Prompt Engineering</b><br/>Un template de prompt structuré sera utilisé pour garantir des réponses cohérentes (expert automobile, sections claires, français).",
        "<b>4.5. Performance et Fiabilité</b><br/>• Latence ELM327 : 50-200 ms par commande.<br/>• Latence Groq : objectif < 5 secondes.<br/>• Gestion des erreurs ELM327 avec réessais et réinitialisation."
    ]
    for para in tech_para:
        story.append(Paragraph(para, styles['CustomNormal']))
    story.append(Spacer(1, 5*mm))
    
    # Section 5 : Livrables
    create_livrables_table(story, styles, data['livrables'])
    
    # Section 6 : Planning
    create_planning_table(story, styles, data['phases'])
    story.append(Paragraph("Total : 16 semaines (~4 mois)", styles['CustomNormal']))
    story.append(Spacer(1, 5*mm))
    
    # Section 7 : Risques
    create_risk_table(story, styles, data['risks'])
    
    # Section 8 : Annexes (mention)
    story.append(Paragraph("8. Annexes", styles['Heading1']))
    annexes = [
        "• Annexe A : Liste des commandes AT et OBD essentielles à implémenter.",
        "• Annexe B : Exemple de réponse brute ELM327 et son décodage.",
        "• Annexe C : Spécification de l’API Groq (endpoint, format de requête compatible OpenAI).",
        "• Annexe D : Exemple de prompt complet pour Llama 3."
    ]
    for a in annexes:
        story.append(Paragraph(a, styles['CustomNormal']))
    story.append(Spacer(1, 5*mm))
    
    # Validation
    create_validation_section(story, styles)
    
    # Génération du PDF
    doc.build(story)
    print(f"PDF généré avec succès : {filename}")

if __name__ == "__main__":
    build_pdf()