import 'package:flutter/material.dart';

class ButtonNote extends StatelessWidget {
  final VoidCallback onTap;
  ButtonNote({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(child: Icon(Icons.add), onPressed: onTap);
  }
}
