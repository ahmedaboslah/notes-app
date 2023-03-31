import 'package:flutter/material.dart';

import 'customeicons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        CustomSearchIcon()
      ],
    );
  }
}

