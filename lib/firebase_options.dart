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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDH1RdushW7WMOOjtgWlWyWzF2l1YkGQ4I',
    appId: '1:817642444737:web:7d8bc159d0d6ee94c14140',
    messagingSenderId: '817642444737',
    projectId: 'uas-flutter-fe586',
    authDomain: 'uas-flutter-fe586.firebaseapp.com',
    storageBucket: 'uas-flutter-fe586.appspot.com',
    measurementId: 'G-RWD0PE8GRD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHv_6NRcD32wj9ARTPyWrTWL15pyqHsRY',
    appId: '1:817642444737:android:153ac0c7a87eef95c14140',
    messagingSenderId: '817642444737',
    projectId: 'uas-flutter-fe586',
    storageBucket: 'uas-flutter-fe586.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6BXWIlBiyshgU72oeoXY3B1LH0zx30fE',
    appId: '1:817642444737:ios:95a25e91e6f98ef8c14140',
    messagingSenderId: '817642444737',
    projectId: 'uas-flutter-fe586',
    storageBucket: 'uas-flutter-fe586.appspot.com',
    iosClientId: '817642444737-kll82ctmvge3i2ra0f4vcniu226dlfe2.apps.googleusercontent.com',
    iosBundleId: 'com.faishal.latihanFirebase',
  );
}