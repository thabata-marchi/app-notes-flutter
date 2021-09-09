import 'package:flutter/material.dart';

class ButtonDelete extends StatelessWidget {
  final VoidCallback onTap;
  ButtonDelete({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.delete), onPressed: onTap);
  }
}
