import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/CustomTextField.dart';

import 'CustomButtom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 16,right: 16,bottom: 10),
      child: SingleChildScrollView(
        child: AddNoteFrom(),
      ),
    );
  }
}

class AddNoteFrom extends StatefulWidget {
  const AddNoteFrom({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteFrom> createState() => _AddNoteFromState();
}

class _AddNoteFromState extends State<AddNoteFrom> {

  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode AutoValidate=AutovalidateMode.disabled;
  String? Title,Subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            onsaved: (value) {
              Title=value;
            },
            Text: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (value){
              Subtitle=value;
            },
            Text: 'Content',
            maxlines: 5,
          ),
         SizedBox(
            height: 50,
          ),
          CustomBttom(
            ontap: () {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }
              else{
                AutoValidate =AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}

