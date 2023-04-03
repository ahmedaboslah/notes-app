import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'customNoteItem.dart';
import 'customappbar.dart';
import 'notelistview.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(icon: Icons.search,Title: 'Notes',),
          SizedBox(height: 20,),
          Expanded(
            child:  NotesListview(),
          ),
        ],
      ),
    );
  }
}
