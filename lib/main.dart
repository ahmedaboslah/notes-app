import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Model/Note_model.dart';
import 'package:notes_app/views/notes_view.dart';
import 'constants.dart';

void main() async{
  await Hive.initFlutter();

 await Hive.openBox(Knotes);
 Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(brightness: Brightness.dark,
       fontFamily: 'assets/fonts/Poppins-Regular.ttf'
       ),
       
       home: const NotesView(),
    );
  }
}