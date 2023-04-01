
import 'package:flutter/material.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        ListTile(
          title:const Text(
            'Flutter tips',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'build your career with\n\nAhmed salah',
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 16
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            'May 21, 2022',
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 14
            ),
          ),
        ),
      ]),
    );
  }
}
