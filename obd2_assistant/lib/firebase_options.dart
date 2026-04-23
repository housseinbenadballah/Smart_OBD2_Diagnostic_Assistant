import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// ⚠️ FICHIER TEMPORAIRE ⚠️
/// Ce fichier a été généré avec des valeurs factices pour que l'application compile.
/// Vous DEVEZ générer le vrai fichier en mettant à jour Node.js et en exécutant
/// la commande `flutterfire configure` à la racine de votre projet.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB9G_Y0EXm2AvBo43uEZ_0aHMGr6--9vpM',
    appId: '1:605043213220:web:90007be9cacb06cc9df731',
    messagingSenderId: '605043213220',
    projectId: 'smart-obd-219eb',
    authDomain: 'smart-obd-219eb.firebaseapp.com',
    storageBucket: 'smart-obd-219eb.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOdm9qnG1yZjGxFcGszLKDxLd-tWrDHaQ',
    appId: '1:605043213220:android:3ec34084ef7599519df731',
    messagingSenderId: '605043213220',
    projectId: 'smart-obd-219eb',
    storageBucket: 'smart-obd-219eb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAShgwjA8AKJB39r5CYON0GBKXmoUHaeaA',
    appId: '1:605043213220:ios:1393809db5fae4ab9df731',
    messagingSenderId: '605043213220',
    projectId: 'smart-obd-219eb',
    storageBucket: 'smart-obd-219eb.firebasestorage.app',
    iosBundleId: 'com.example.obd2Assistant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAShgwjA8AKJB39r5CYON0GBKXmoUHaeaA',
    appId: '1:605043213220:ios:1393809db5fae4ab9df731',
    messagingSenderId: '605043213220',
    projectId: 'smart-obd-219eb',
    storageBucket: 'smart-obd-219eb.firebasestorage.app',
    iosBundleId: 'com.example.obd2Assistant',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB9G_Y0EXm2AvBo43uEZ_0aHMGr6--9vpM',
    appId: '1:605043213220:web:fc554d306121b15a9df731',
    messagingSenderId: '605043213220',
    projectId: 'smart-obd-219eb',
    authDomain: 'smart-obd-219eb.firebaseapp.com',
    storageBucket: 'smart-obd-219eb.firebasestorage.app',
  );

}