import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/organism/hvdh_sign_in_card.dart';
import 'package:heiko_flashcard/core/templates/hvdh_single_card_template.dart';
import 'package:heiko_flashcard/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:heiko_flashcard/pages/register_page.dart';
import 'package:heiko_flashcard/services/auth_service.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return HvdhCardTemplate(
      title: "Login",
        root: HvdhSignInCard(
          emailText: "email",
          emailTextFieldHint: "typ hier je mail",
          passwordText: "wachtwoord",
          passwordTextHint: "Typ hier je wachtwoord",
          registerButton: "registreer",
          loginButton: "login",
          onLoginPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) =>
                  HomePage(),
            ));
          },
          onRegisterPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>
                  RegisterPage(),
            ));
          },
        )
    );

  }
}
