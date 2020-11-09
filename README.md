# Preferencias_Usuarios

Los objetivos de esta aplicación son:

-   Aprender cómo guardar en el storage
-   Aprender a leer del storage
-   Cómo leer información del storage antes de que la aplicación se ejecute
-   Implementar un singleton para aumentar la eficiencia del mismo.
-   En este ejemplo vemos como guardar información en el storage nativo sin usar SQLite.

## Dependencias utilizadas

- [shared_preferences](https://pub.dev/packages/shared_preferences/install)

    Wraps platform-specific persistent storage for simple data (NSUserDefaults on iOS and macOS, SharedPreferences on Android, etc.). Data may be persisted to disk asynchronously, and there is no guarantee that writes will be persisted to disk after returning, so this plugin must not be used for storing critical data.

    ````
    dependencies:
    shared_preferences: ^0.5.12+4
    ````


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# preferencias_usuarios_app_flutter
