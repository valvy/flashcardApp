import 'package:flutter/material.dart';

import 'package:heiko_flashcard/core/style/app_sizes.dart';

class HvdhTextField extends TextField {

  HvdhTextField.rounded({
    super.key,
    String hintText = "",
    super.keyboardType = TextInputType.text,
    bool isPassword = false,
  }) : super(
    textAlign: TextAlign.start,
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r_8),
          borderSide: const BorderSide(
            width: AppSizes.w_0,
            style: BorderStyle.solid,
          )),
      //contentPadding: const EdgeInsets.all(AppSizes.r_16),
    ),
  );
}