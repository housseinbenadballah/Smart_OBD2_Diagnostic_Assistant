# Cahier des Charges - Smart OBD2 Diagnostic Assistant

## 1. Présentation du Projet
**Nom du projet :** Smart OBD2 Diagnostic Assistant (AutoScan Pro)
**Plateforme :** Application mobile (Android/iOS)
**Technologie principale :** Flutter / Dart

Le "Smart OBD2 Diagnostic Assistant" est une application mobile d'aide au diagnostic automobile de qualité professionnelle. Son but est d'accompagner les utilisateurs et techniciens dans l'interprétation des codes d'erreur (DTC - Diagnostic Trouble Codes) fournis par les scanners OBD2. L'application utilise l'Intelligence Artificielle (via l'API hybride Groq LLM) pour fournir instantanément des analyses, des causes possibles et des guides de dépannage ciblés pour plus de 20 000 codes de constructeurs.

## 2. Objectifs de l'Application
- **Simplifier le diagnostic :** Transformer des codes d'erreur bruts (ex: P0301) en informations compréhensibles et exploitables.
- **Dépannage intelligent :** Proposer des guides de réparation pas à pas spécifiques au modèle du véhicule.
- **Interface intuitive :** Fournir une interface moderne (style "Glassmorphism") facilitant la lecture et l'interaction.

## 3. Fonctionnalités (Périmètre Fonctionnel)

### 3.1. Fonctionnalités Principales
1. **Saisie des Informations de Diagnostic :**
   - Champ de saisie pour le code d'erreur DTC (ex: P0301, P0420).
   - Champ de saisie pour le modèle du véhicule et la marque (ex: Renault Clio, Toyota Corolla).
2. **Analyse par IA en Temps Réel :**
   - Intégration d'un LLM rapide (Groq) pour analyser le code d'erreur et générer la réponse.
   - Bouton d'analyse déclenchant la requête avec indication de chargement asynchrone (spinner/loader).
3. **Affichage Structuré des Résultats :**
   - **Interprétation :** Une explication claire, sans jargon, du code d'erreur.
   - **Causes Possibles :** Une liste des éléments mécaniques/électroniques pouvant déclencher ce code.
   - **Étapes de Dépannage (Troubleshooting) :** Un guide étape par étape recommandé pour résoudre le problème.

### 3.2. Fonctionnalités Secondaires (Prévues / Évolutions)
- **Scanner Intégré :** Analyse instantanée par connexion Bluetooth/Wi-Fi aux lecteurs OBD2 matériels ELM327 (Monitoring en temps réel).
- **Historique des diagnostics :** Sauvegarde des requêtes passées.

## 4. Architecture Technique et Choix Technologiques

### 4.1. Stack Technologique
- **Framework UI :** Flutter (Multiplateforme)
- **Langage :** Dart
- **Client HTTP :** `Dio` (pour les requêtes API fluides et sécurisées)
- **Gestion des États (State Management) :** `Provider` (Pattern `ChangeNotifier`)
- **Backend & Sécurité :** Firebase (Remote Config pour la sécurisation de la clé d'API Groq)
- **IA :** Modèle de langage via API Groq

### 4.2. Architecture Logicielle (Clean Architecture)
Le projet applique une structure claire en couches (Domain, Data, Presentation) pour garantir son évolutivité, sa testabilité et la séparation claire des responsabilités :
- **Couche Domain (Entités) :** 
  Définition des modèles de données indépendants tel que `DiagnosticResult` (interprétation, causes, troubleshooting steps).
- **Couche Data (Services) :**
  Contient la logique externe avec l'implémentation de `AiApiService`. Cette couche interroge silencieusement l'API de Groq et récupère les clés d'authentification via `Firebase Remote Config`.
- **Couche Presentation (UI & Providers) :**
  - **Providers :** `DiagnosticProvider` gère l'orchestration des données entre les services et la vue (isLoading, error state, résultat).
  - **Interface Graphique :** Vues principales (`MainScreen`) basées sur des widgets réutilisables (`CustomTextField`, `GlassCard`, `PrimaryButton`).

## 5. Interface Utilisateur et Design (UI/UX)
- **Design System :** Esthétique "Glassmorphism".
- **Composants :** 
  - Cartes transparentes avec effet de flou (Blur).
  - Dégradés radiaux et linéaires dans les tons de bleu (`#2563EB`, `#3B82F6`) et d'accentuation claire (`#38BDF8`).
  - Dark Mode et Light Mode intégrés nativement.
- **Typographie :** L'application utilise la police `Inter` (Google Fonts) avec des hiérarchies claires (`headline_large`, `body_medium`).

## 6. Contraintes Techniques et Sécurité
1. **Sécurité des données / clés (API Keys) :**
   - **Crucial :** Les clés API externes (Groq API Key) NE DOIVENT PAS être hardcodées dans le code source de Flutter.
   - **Solution :** Utilisation de **Firebase Remote Config** ou Firebase Secret Manager pour récupérer de façon asynchrone et sécurisée les jetons lors de l'exécution, évitant ainsi l'injection de secrets sur GitHub/APK.
2. **Performance :**
   - L'écran d'interface (`MainScreen`) réagit sous forme de composition d'états réactifs pour éviter les re-renders inutiles (implémentation de `Provider`).
3. **Disponibilité Réseau :**
   - L'application doit gérer avec grâce les exceptions réseaux (Timeouts HTTP, erreurs 500, absence de connexion Wi-Fi/4G) avec des messages adaptés en UI (affichés via le `DiagnosticProvider.error`).

## 7. Livrables Attendus
- Code source structuré complet (répertoire `/lib` via Clean Architecture).
- Fichier de dépendances configuré (`pubspec.yaml`).
- Diagramme UML global de l'application (Architecture des couches).
- Module sécurisé pour la gestion de "API Secrets" fonctionnel (Firebase).
