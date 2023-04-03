import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/CustomTextField.dart';

import 'CustomButtom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              Text: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              Text: 'Content',
              maxlines: 5,
            ),
           SizedBox(
              height: 50,
            ),
            CustomBttom()
          ],
        ),
      ),
    );
  }
}

