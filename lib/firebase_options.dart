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
    apiKey: 'AIzaSyCgPg4TO1_gTUghnAFZfiH_sJpLt-1nkwA',
    appId: '1:989615574144:web:8ac81c30ed8c56e787ea65',
    messagingSenderId: '989615574144',
    projectId: 'fir-splash-login',
    authDomain: 'fir-splash-login.firebaseapp.com',
    storageBucket: 'fir-splash-login.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1_N3tAT9__r3t3t_dDvUiF3jVkLo-yRA',
    appId: '1:989615574144:android:0afdaf95d6bd8efa87ea65',
    messagingSenderId: '989615574144',
    projectId: 'fir-splash-login',
    storageBucket: 'fir-splash-login.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBWH4LIcIq2RLwP1Lqb5tTz7lnepHaw7Y',
    appId: '1:989615574144:ios:dc8516845af3955387ea65',
    messagingSenderId: '989615574144',
    projectId: 'fir-splash-login',
    storageBucket: 'fir-splash-login.appspot.com',
    iosClientId: '989615574144-pjf4qu7j50v3kc3788cncc1fdqvp3eai.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseSplashLogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBWH4LIcIq2RLwP1Lqb5tTz7lnepHaw7Y',
    appId: '1:989615574144:ios:dc8516845af3955387ea65',
    messagingSenderId: '989615574144',
    projectId: 'fir-splash-login',
    storageBucket: 'fir-splash-login.appspot.com',
    iosClientId: '989615574144-pjf4qu7j50v3kc3788cncc1fdqvp3eai.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseSplashLogin',
  );
}
