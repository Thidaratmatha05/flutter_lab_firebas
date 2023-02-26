// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAASTlgIM6tY2NIVf1X858K_FQbbCrLaFE',
    appId: '1:61605556919:web:535a2802f4466641601332',
    messagingSenderId: '61605556919',
    projectId: 'lab-flutter-firebase-81802',
    authDomain: 'lab-flutter-firebase-81802.firebaseapp.com',
    storageBucket: 'lab-flutter-firebase-81802.appspot.com',
    measurementId: 'G-HZ9QHL8QYL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZTYQJhTCYeCja2v5bIOSxlLN4OZBFkew',
    appId: '1:61605556919:android:b0d50748e28a6c82601332',
    messagingSenderId: '61605556919',
    projectId: 'lab-flutter-firebase-81802',
    storageBucket: 'lab-flutter-firebase-81802.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLdluC8VWYbMtnqlRqDA8n4Y5z2yFWVNE',
    appId: '1:61605556919:ios:e6df6ba315168204601332',
    messagingSenderId: '61605556919',
    projectId: 'lab-flutter-firebase-81802',
    storageBucket: 'lab-flutter-firebase-81802.appspot.com',
    iosClientId: '61605556919-moc0kpqho5ad857r0fgqg191d4pil8um.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterLabFirebas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBLdluC8VWYbMtnqlRqDA8n4Y5z2yFWVNE',
    appId: '1:61605556919:ios:e6df6ba315168204601332',
    messagingSenderId: '61605556919',
    projectId: 'lab-flutter-firebase-81802',
    storageBucket: 'lab-flutter-firebase-81802.appspot.com',
    iosClientId: '61605556919-moc0kpqho5ad857r0fgqg191d4pil8um.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterLabFirebas',
  );
}