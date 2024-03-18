import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/organism/hvdh_sign_in_card.dart';
import 'package:heiko_flashcard/core/templates/hvdh_single_card_template.dart';
import 'package:heiko_flashcard/pages/home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {


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
          onLoginPressed: () {},
          onRegisterPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) =>  const HomePage(),
            ));
          },
        )
    );

  }
}
