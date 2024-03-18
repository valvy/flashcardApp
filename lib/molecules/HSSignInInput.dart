import 'package:flutter/material.dart';
import 'package:heiko_flashcard/style/AppSizes.dart';
import 'package:heiko_flashcard/atoms/input/HSTextField.dart';

class HSSignInInput extends StatelessWidget {
  final String emailText;
  final String passwordText;

  final String emailTextFieldHint;
  final String passwordTextFieldHint;

  const HSSignInInput({
    super.key,
    required this.emailText,
    required this.passwordText,
    this.emailTextFieldHint = "",
    this.passwordTextFieldHint = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(height: AppSizes.h_16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(emailText),
        ),
        HSTextField.rounded(
          hintText: emailTextFieldHint,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: AppSizes.h_16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(passwordText),
        ),
        const SizedBox(height: AppSizes.h_12),
        HSTextField.rounded(
          hintText: passwordTextFieldHint,
          keyboardType: TextInputType.number,
          isPassword: true,
        ),

      ],
    );
  }
}