import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes_app/widgets/CustomTextField.dart';
import 'package:notes_app/widgets/customappbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(height: 20,),
        CustomAppBar(icon: Icons.check,Title: 'Edit Note',),
        SizedBox(height: 40,),
        CustomTextField(Text:'Title' ),
        SizedBox(height: 20,),
        CustomTextField(Text: 'Content',maxlines: 7,)
      ],),
    );
  }
}