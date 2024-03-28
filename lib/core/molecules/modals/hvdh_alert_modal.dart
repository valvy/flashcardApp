import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/atoms/button/hvdh_button.dart';

class HvdHAlertDialog extends AlertDialog {

  HvdHAlertDialog({
    String title = "",
    String msg = "",
    required VoidCallback onClick,
  }) : super (
    title: Text(title),
    content: SingleChildScrollView(
      child: ListBody(
        children: [
          Text(msg)
        ],
      ),
    ),
    actions: [
      HvdhButton(text: "ok", onPressed: onClick)
    ]
  );
}