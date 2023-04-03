import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_splash_login/features/home_view.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationView extends ConsumerStatefulWidget {
  const AuthenticationView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends ConsumerState<AuthenticationView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: firebase.FirebaseUIActions(
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            if (!state.user!.emailVerified) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HomeView(),
              ));

            } else {
              print('Email not verified');
            }
          }),
        ],

        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: firebase.LoginView(
                action: firebase.AuthAction.signIn,
                providers: firebase.FirebaseUIAuth.providersFor(
                  FirebaseAuth.instance.app,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
