import 'package:firebase_auth/firebase_auth.dart' show GoogleProvider;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kartal/kartal.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import '../../firebase_options.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';

//Data girmesine engellemek amacıyla
@immutable
class ApplicationStart {

  ApplicationStart._(); //static metodlar olacaksa bu class ı kapatıyoruz
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DeviceUtility.deviceInit();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
      GoogleProvider(clientId: ''),
    ]);
  }
}