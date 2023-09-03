# auth_supabase

## Configuración

- entrar al archivo auth_google.dart
- cambiar el applicationId por el nombre de la app
- en el build.gradle agregar la dependencia al kotlin jdk
- cambiar minSdkVersion por 19
- en androidmanifest quitar el android:name
- crear oauth en google cloud
- cambiar el id de cliente en auth_google.dart
- en supabase ir a oauth/providers
- cambiar el Authorized Client IDs 
* el nombre del app con _ me dio fallas