import 'package:flutter/material.dart';

class HvdhButton extends TextButton {

  HvdhButton({
    super.key,
    required String text,
    required VoidCallback onPressed,
  }) : super (
    onPressed: onPressed,
    child: Text(text),
  );

  HvdhButton.error({
    super.key,
    required String text,
    required VoidCallback onPressed,
  }) : super (
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.blue.withOpacity(0.04);
          }
          if (states.contains(MaterialState.focused) ||
              states.contains(MaterialState.pressed)) {
            return Colors.blue.withOpacity(0.12);
          }
          return null; // Defer to the widget's default.
        },
      ),
    ),
    onPressed: onPressed,
    child: Text(text),
  );



}