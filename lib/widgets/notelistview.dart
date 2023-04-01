import 'package:flutter/material.dart';

import 'customNoteItem.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  final data =const[];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: ((context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 4),
            child:  noteItem(),
          );
        }
        ),
        
      ),
    );
  }
}