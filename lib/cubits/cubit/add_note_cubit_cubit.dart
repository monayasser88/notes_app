import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constraints.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note)async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(KNotesBox);
      await notesBox.add(note);
            emit(AddNoteSuccess());
    } catch (e) {
      // TODO
      emit(AddNoteFailure(e.toString()));
    }
  }
}
