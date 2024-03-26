import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/atoms/input/hvdh_text_field.dart';
import 'package:heiko_flashcard/services/auth_service.dart';
import 'package:heiko_flashcard/core/atoms/button/hvdh_button.dart';
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text("Registerpage"),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Text("Email"),
            HvdhTextField.rounded(
              hintText: "email",
              keyboardType: TextInputType.emailAddress,
            ),
            Text("gebruikersnaam"),
            HvdhTextField.rounded(
              hintText: "wachtwoord",
              keyboardType: TextInputType.visiblePassword,
            ),
            HvdhButton(
                text: "registreer",
                onPressed: () => {
                  _authService.registerWithEmailAndPassword("test@test.com", "ABC1234!")
                }
            ),
          ],
        )
      ),
    );
  }
}