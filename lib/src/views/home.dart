import 'package:flutter/material.dart';
import 'package:notes/src/components/button_add.dart';
import 'package:notes/src/components/list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[
    'First Item',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          for (var i = 0; i < notes.length; i++)
            ListNotes(
              itensList: notes[i],
              onTap: () async {
                var response = await Navigator.pushNamed(
                    context, '/create-note',
                    arguments: notes[i]);
                if (response != null) {
                  var description = response as String;
                  if (response.isEmpty) {
                    notes.removeAt(i);
                  } else {
                    notes[i] = description;
                  }
                  setState(() {});
                }
              },
            )
        ]),
      ),
      floatingActionButton: ButtonNote(onTap: () async {
        var description = await Navigator.pushNamed(context, "/create-note");
        if (description != null) {
          notes.add(description as String);
          setState(() {});
        }
      }),
    );
  }
}
