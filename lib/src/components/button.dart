import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  final VoidCallback onTap;
  final String textButton;
  ButtonDefault({required this.onTap, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        child: ElevatedButton(onPressed: onTap, child: Text(textButton)));
  }
}
