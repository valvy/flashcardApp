import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/style/app_sizes.dart';
import 'package:heiko_flashcard/core/molecules/hvdh_sign_in_input.dart';
import 'package:heiko_flashcard/core/atoms/button/hvdh_button.dart';

class HvdhSignInCard extends StatelessWidget {

  final String emailText;
  final String emailTextFieldHint;
  final String passwordText;
  final String passwordTextHint;

  final String registerButton;
  final String loginButton;

  final VoidCallback onRegisterPressed;
  final VoidCallback onLoginPressed;

  const HvdhSignInCard({
    super.key,
    required this.emailText,
    required this.emailTextFieldHint,
    required this.passwordText,
    required this.passwordTextHint,
    required this.registerButton,
    required this.loginButton,
    required this.onRegisterPressed,
    required this.onLoginPressed
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.r_16),
        child: Column(
          children: [
            HvdhSignInInput(
              emailText: emailText,
              passwordText: passwordText,
              emailTextFieldHint:  emailTextFieldHint,
              passwordTextFieldHint: passwordTextHint,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: HvdhButton(
                  text: loginButton,
                  onPressed: onLoginPressed
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: AppSizes.h_48,
                    child: HvdhButton.error(
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