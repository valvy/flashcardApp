import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/style/AppSizes.dart';
import 'package:heiko_flashcard/core/molecules/HSSignInInput.dart';
import 'package:heiko_flashcard/core/atoms/button/HSButton.dart';

class HSSignInCard extends StatelessWidget {

  final String emailText;
  final String emailTextFieldHint;
  final String passwordText;
  final String passwordTextHint;

  final String registerButton;
  final String loginButton;

  final VoidCallback onRegisterPressed;
  final VoidCallback onLoginPressed;

  const HSSignInCard({
    super.key,
    required String this.emailText,
    required String this.emailTextFieldHint,
    required String this.passwordText,
    required String this.passwordTextHint,
    required String this.registerButton,
    required String this.loginButton,
    required VoidCallback this.onRegisterPressed,
    required VoidCallback this.onLoginPressed
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.r_16),
        child: Column(
          children: [
            HSSignInInput(
              emailText: emailText,
              passwordText: passwordText,
              emailTextFieldHint:  emailTextFieldHint,
              passwordTextFieldHint: passwordTextHint,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: HSButton(
                  text: loginButton,
                  onPressed: onLoginPressed
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: AppSizes.h_48,
                    child: HSButton.error(
                      onPressed: onRegisterPressed,
                      text: registerButton
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}