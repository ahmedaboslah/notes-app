import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(height: 24,),
        CustomTextField(Text: 'Title',),
        SizedBox(height: 16,),
        CustomTextField(Text: 'Content',maxlines: 5,)
      ],),
    );
  }
}