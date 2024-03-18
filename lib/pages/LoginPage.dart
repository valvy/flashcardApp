import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/atoms/input/HSTextField.dart';
import 'package:heiko_flashcard/core/molecules/HSSignInInput.dart';
import 'package:heiko_flashcard/core/organism/HSSignInCard.dart';
import 'package:heiko_flashcard/core/templates/HSSingleCardTemplate.dart';
import 'package:heiko_flashcard/pages/HomePage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return HSCardTemplate(
      title: "Login",
        root: HSSignInCard(
          emailText: "email",
          emailTextFieldHint: "typ hier je mail",
          passwordText: "wachtwoord",
          passwordTextHint: "Typ hier je wachtwoord",
          registerButton: "registreer",
          loginButton: "login",
          onLoginPressed: () {},
          onRegisterPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) =>  HomePage(),
            ));
          },
        )
    );

  }
}
