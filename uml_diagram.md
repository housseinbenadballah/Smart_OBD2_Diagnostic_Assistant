# Diagramme UML - Smart OBD2 Diagnostic Assistant

Ce document présente le diagramme de classes UML de l'application Flutter `obd2_assistant`. L'architecture suit une approche par composants structurée en couches (Data, Domain, Presentation).

## Diagramme de Classes

```mermaid
classDiagram
    %% Entities
    class DiagnosticResult {
        +final String interpretation
        +final String possibleCauses
        +final String troubleshootingSteps
    }

    %% Data Sources & Services
    class AiApiService {
        -final Dio _dio
        -Future~String~ _getApiKey()
        +Future~DiagnosticResult~ analyzeDtc(String dtcCode, String carModel)
        -DiagnosticResult _parseResponse(String responseText)
    }

    %% State Management (Providers)
    class DiagnosticProvider {
        -final AiApiService _apiService
        -DiagnosticResult? _result
        -bool _isLoading
        -String? _error
        +DiagnosticResult? get result
        +bool get isLoading
        +String? get error
        +Future~void~ analyze(String dtcCode, String carModel)
        +void reset()
    }

    %% UI Classes
    class OBD2AssistantApp {
        +Widget build(BuildContext context)
    }

    class MainScreen {
        +State~MainScreen~ createState()
    }

    class _MainScreenState {
        -final TextEditingController _dtcController
        -final TextEditingController _carModelController
        -void _analyze()
        +void dispose()
        +Widget build(BuildContext context)
        -Widget _buildResultCard(...)
    }

    %% UI Widgets
    class CustomTextField {
        +final TextEditingController controller
        +final String hintText
        +final IconData icon
        +Widget build(BuildContext context)
    }

    class GlassCard {
        +final Widget child
        +final double blur
        +final double radius
        +final double borderOpacity
        +Widget build(BuildContext context)
    }

    class PrimaryButton {
        +final String text
        +final bool isLoading
        +final VoidCallback onPressed
        +Widget build(BuildContext context)
    }

    %% Relationships
    OBD2AssistantApp --> MainScreen : instancie
    MainScreen "1" *-- "1" _MainScreenState : composition (State)
    _MainScreenState --> DiagnosticProvider : interagit (Provider.of)
    _MainScreenState ..> CustomTextField : utilise
    _MainScreenState ..> GlassCard : utilise
    _MainScreenState ..> PrimaryButton : utilise
    
    DiagnosticProvider "1" *-- "1" AiApiService : composition
    DiagnosticProvider "1" o-- "0..1" DiagnosticResult : agrégation (Etat)
    AiApiService ..> DiagnosticResult : instancie
```

## Architecture Structurée

1. **Domain (Entités)** : 
   `DiagnosticResult` représente le modèle de données pur de l'application, indépendant du framework Flutter et des sources de données externes.
2. **Data (Services)** : 
   `AiApiService` gère la communication avec l'API Groq (via `Dio`) et récupère la clé API de façon sécurisée (via `Firebase Remote Config`).
3. **Presentation (Providers)** : 
   `DiagnosticProvider` sert de lien logique entre l'UI et les données. Utilisant `ChangeNotifier`, il expose les états de chargement (`isLoading`), les erreurs (`error`) et les résultats (`result`).
4. **Presentation (UI)** : 
   La vue principale `MainScreen` regroupe l'IHM et s'abonne à `DiagnosticProvider` pour se réafficher de manière réactive. Des composants visuels réutilisables (`GlassCard`, `CustomTextField`, `PrimaryButton`) y sont employés pour maintenir le style "Glassmorphism".
