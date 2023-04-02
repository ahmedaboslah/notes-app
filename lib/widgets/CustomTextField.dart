import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.Text,this.maxlines=1});
  final String Text;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField (
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
