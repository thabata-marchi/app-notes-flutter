import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  final void Function(String) onTapChanged;
  final String textLabel;
  final controllerInput;
  InputDefault({
    required this.controllerInput,
    required this.onTapChanged,
    required this.textLabel,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerInput,
      maxLines: null,
      onChanged: onTapChanged,
      decoration: InputDecoration(labelText: textLabel),
    );
  }
}
