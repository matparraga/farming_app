import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  final List<String> items;
  final String hintText;

  const DropdownButtonWidget({
    super.key,
    required this.items,
    required this.hintText,
  });

  @override
  DropdownButtonWidgetState createState() => DropdownButtonWidgetState();
}

class DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      borderRadius: BorderRadius.circular(10),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      hint: Text(widget.hintText),
      value: _value,
      items: widget.items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }
}
