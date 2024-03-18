import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/style/app_sizes.dart';
import 'package:heiko_flashcard/core/atoms/input/hvdh_text_field.dart';

class HvdhSignInInput extends StatelessWidget {
  final String emailText;
  final String passwordText;

  final String emailTextFieldHint;
  final String passwordTextFieldHint;

  const HvdhSignInInput({
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
        HvdhTextField.rounded(
          hintText: emailTextFieldHint,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: AppSizes.h_16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(passwordText),
        ),
        const SizedBox(height: AppSizes.h_12),
        HvdhTextField.rounded(
          hintText: passwordTextFieldHint,
          keyboardType: TextInputType.number,
          isPassword: true,
        ),

      ],
    );
  }
}