// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
    apiKey: 'AIzaSyAPeB04JlPZtdcB5tCv1bbdmwco0tEDlCU',
    appId: '1:789639164196:web:98468acf11c66c15c0c3b1',
    messagingSenderId: '789639164196',
    projectId: 'push-notifications-proje-db62f',
    authDomain: 'push-notifications-proje-db62f.firebaseapp.com',
    storageBucket: 'push-notifications-proje-db62f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeoscigQCWIaEM_nL8_CtBBP-01lZahnE',
    appId: '1:789639164196:android:817077f4a1d3ff1bc0c3b1',
    messagingSenderId: '789639164196',
    projectId: 'push-notifications-proje-db62f',
    storageBucket: 'push-notifications-proje-db62f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwxLEHpXja5sQ4j-Op70QACGyr2JV6Eeo',
    appId: '1:789639164196:ios:7d22a4a9e127a25ec0c3b1',
    messagingSenderId: '789639164196',
    projectId: 'push-notifications-proje-db62f',
    storageBucket: 'push-notifications-proje-db62f.appspot.com',
    iosBundleId: 'com.example.learning',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwxLEHpXja5sQ4j-Op70QACGyr2JV6Eeo',
    appId: '1:789639164196:ios:7d22a4a9e127a25ec0c3b1',
    messagingSenderId: '789639164196',
    projectId: 'push-notifications-proje-db62f',
    storageBucket: 'push-notifications-proje-db62f.appspot.com',
    iosBundleId: 'com.example.learning',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPeB04JlPZtdcB5tCv1bbdmwco0tEDlCU',
    appId: '1:789639164196:web:527efff0749f4c77c0c3b1',
    messagingSenderId: '789639164196',
    projectId: 'push-notifications-proje-db62f',
    authDomain: 'push-notifications-proje-db62f.firebaseapp.com',
    storageBucket: 'push-notifications-proje-db62f.appspot.com',
  );
}
