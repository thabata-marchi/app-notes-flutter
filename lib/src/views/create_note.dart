import 'package:flutter/material.dart';
import 'package:notes/src/components/button_delete.dart';
import 'package:notes/src/components/button.dart';
import 'package:notes/src/components/input.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = "";
  var textController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        description = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = description;
        isEdit = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Note" : "Create Note"),
        centerTitle: true,
        actions: [
          if (isEdit)
            ButtonDelete(onTap: () {
              Navigator.pop(context, "");
            })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputDefault(
              controllerInput: textController,
              onTapChanged: (value) {
                description = value;
                setState(() {});
              },
              textLabel: "Description",
            ),
            SizedBox(
              height: 32,
            ),
            if (description.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonDefault(
                      onTap: () {
                        Navigator.pop(context, description);
                      },
                      textButton: "Save")
                ],
              )
          ],
        ),
      ),
    );
  }
}
