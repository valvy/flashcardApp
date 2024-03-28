import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/atoms/input/hvdh_text_field.dart';
import 'package:heiko_flashcard/services/auth_service.dart';
import 'package:heiko_flashcard/core/atoms/button/hvdh_button.dart';
import 'package:heiko_flashcard/pages/login_page.dart';
import 'package:heiko_flashcard/core/molecules/modals/hvdh_alert_modal.dart';
import 'package:heiko_flashcard/exceptions/hvdh_base_exception.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();

  Future<void> _authenticateRegister() async{
    try {
      var res = await this._authService.registerWithEmailAndPassword(
          _emailController.text, _passWordController.text);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } on HvdHBaseException catch  (e) {
      return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context)
          {
            return HvdHAlertDialog(title: "Fout", msg: e.msg, onClick: () => Navigator.of(context).pop());
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Registerpage"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text("Email"),
          HvdhTextField.rounded(
            hintText: "email",
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
          ),
          Text("gebruikersnaam"),
          HvdhTextField.rounded(
            hintText: "wachtwoord",
            keyboardType: TextInputType.visiblePassword,
            controller: _passWordController,
          ),
          HvdhButton(
              text: "registreer",
              onPressed: this._authenticateRegister),
        ],
      )),
    );
  }

  @override
  void dispose() {
    this._passWordController.dispose();
    this._emailController.dispose();
    super.dispose();
  }
}
