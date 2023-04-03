import 'package:flutter/material.dart';

import 'customeicons.dart';

class CustomAppBar extends StatelessWidget {
const CustomAppBar({required this.Title,required this.icon});
  final String Title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        CustomSearchIcon(icon: icon)
      ],
    );
  }
}

