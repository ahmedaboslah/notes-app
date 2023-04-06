import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Model/Note_model.dart';

import '../../constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote(NoteModel note) async{
    emit(AddNoteLoading());

    try {
  var noteBox = Hive.box<NoteModel>(Knotes);
  await noteBox.add(note);
  emit(AddNoteSuccess());
} catch (e) {
  emit(AddNoteFailed(e.toString()));
}
  }
}
