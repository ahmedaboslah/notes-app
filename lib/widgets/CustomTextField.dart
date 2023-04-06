import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.Text,this.maxlines=1,this.onsaved});
  final String Text;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField (
      onSaved: onsaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        else{
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        
          hintText: '$Text',
          hintStyle: TextStyle(color: KPrimaryColor),
          border: BuildBorder(),
          focusedBorder:BuildBorder(KPrimaryColor)
          ),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color:  Color?? Colors.white,
          ),
        );
  }
}
