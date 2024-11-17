import 'package:flutter/material.dart';
import 'package:farming_app/core/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key, required this.buttomText, required this.onPressed});

  final String buttomText;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding: const WidgetStatePropertyAll(EdgeInsets.all(10)),
          backgroundColor: const WidgetStatePropertyAll(blackEsmeralColor),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
      child: Text(
        buttomText,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
