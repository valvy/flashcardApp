import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/organism/hvdh_sign_in_card.dart';
import 'package:heiko_flashcard/core/templates/hvdh_single_card_template.dart';
import 'package:heiko_flashcard/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:heiko_flashcard/pages/register_page.dart';
import 'package:heiko_flashcard/services/auth_service.dart';
import 'package:heiko_flashcard/exceptions/hvdh_base_exception.dart';
import 'package:heiko_flashcard/core/molecules/modals/hvdh_alert_modal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();


  Future<void> _authenticate() async {
    try {
      await this._authService.signInWithEmailAndPassword(
          this._emailController.text, this._passWordController.text);
    } on HvdHBaseException catch (e) {
      return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return HvdHAlertDialog(title: "Fout",
                msg: e.msg,
                onClick: () => Navigator.of(context).pop());
          });
    }
  }

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
          emailController: this._emailController,
          passwordController: this._passWordController,
          onLoginPressed: _authenticate,
          onRegisterPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ));
          },
        ));
  }

  @override
  void dispose() {
    this._passWordController.dispose();
    this._emailController.dispose();
    super.dispose();
  }
}
