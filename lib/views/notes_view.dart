import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes_app/widgets/notesviewbody.dart';

import '../widgets/Addnotebottomsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context, 
            builder: ((context) {
              return const AddNoteBottomSheet();
            }));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: notesViewBody(),
    );
  }
}
