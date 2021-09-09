import 'package:flutter/material.dart';

class ListNotes extends StatelessWidget {
  final void Function() onTap;
  final String itensList;

  ListNotes({
    required this.onTap,
    required this.itensList,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(itensList),
        onTap: onTap,
      ),
    );
  }
}
