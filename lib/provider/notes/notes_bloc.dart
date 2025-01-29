import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zybra_task/modal/user_modal.dart';

import '../../database/table/notes_table.dart';

part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc() : super(NotesInitial()) {
    on<NoteSuccessEvent>((event, emit) {
      emit(NotesLoading());
      try{
        UserModel data = UserModel(
          id: event.id,
          title: event.title,
          content: event.content,
        );
        // Call insert function to insert data into the table
        NotesTable().insert(data);
        print("data ${data}");
        emit(NotesInitial());
      }catch(e){
print(e);
      }

    });
    on<NotegetEvent>((event, emit) async {
      emit(NotesLoading());
      try {
        // Retrieve notes as a list of maps
        List<Map<String, dynamic>> notesData = await NotesTable().getNotes();

        // Convert the maps to a list of UserModel instances
        List<UserModel> loadedNotes = notesData.map((note) => UserModel.fromMap(note)).toList();
       emit(NotesSuccess(loadedNotes));
      }catch(e){
       print(e);
      }

    });
    on<NoteDeleteEvent>((event, emit) async {
      emit(NotesLoading());
      try {
        await NotesTable().deleteNote(event.id);

      } catch (e) {
        print("Error deleting note: $e");
      }

    });

  }
}
