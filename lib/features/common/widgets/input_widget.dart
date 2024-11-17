import 'package:flutter/material.dart';
import 'package:farming_app/core/constants/constants.dart';

class InputWidget extends StatelessWidget {
  const InputWidget(
      {super.key,
      required this.inputHintText,
      required this.inputPrefixIcon,
      this.inputSuffixIcon});
  final String inputHintText;
  final Icon inputPrefixIcon;
  final IconButton? inputSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: inputHintText,
        fillColor: neutralColor,
        prefixIcon: inputPrefixIcon,
        suffixIcon: inputSuffixIcon,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      ),
    );
  }
}
