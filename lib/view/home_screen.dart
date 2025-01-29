import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zybra_task/modal/user_modal.dart';

import '../database/table/notes_table.dart';
import '../provider/notes/notes_bloc.dart';
import 'add_note.dart';
import 'edit_page.dart'; // Import your AddNoteScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> notes = [];
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<NotesBloc>(context).add(
    //     NotegetEvent(
    //     ));
    _loadNotes();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Refresh notes whenever dependencies change
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    BlocProvider.of<NotesBloc>(context).add(
        NotegetEvent(
        ));
  }

  Future<void> _deleteNoteFromDatabase(String noteId) async {
    BlocProvider.of<NotesBloc>(context).add(
        NoteDeleteEvent(id: noteId
        ));
    _loadNotes();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add your notes"),
        automaticallyImplyLeading: false,
      ),

      body: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          if (state is NotesLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(state is NotesSuccess){
             notes = state.notes;
            return _buildScreen(context);
          }
         return _buildScreen(context);
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add note screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AddNoteScreen(index: "${notes.length + 1}",),
            ),
          ).then((newNote) {
            if (newNote != null) {
              setState(() {
                notes.add(newNote);
              });
            }
          });
        },
        child: Icon(Icons.add),

      ),
    );
  }


  _buildScreen(BuildContext context){
    return RefreshIndicator(
      onRefresh: () async {
        _loadNotes();
        await Future.delayed(Duration(seconds: 2));
      },
      child: notes.isEmpty
          ? Center(
        child: Text(
          'Please add notes',
          style: TextStyle(fontSize: 24.sp),
        ),
      )
          : ListView.builder(
        itemCount: notes.length ,
        itemBuilder: (context, index) {
          final title = notes[index].title;
          final content = notes[index].content;
          final id = notes[index].id;


          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0)),
            margin: EdgeInsets.all(08.0),
            child: ListTile(
              title: Text(
                "Title : $title",
                //style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Content : $content",
                maxLines: 1, // Display only one line of content
                overflow: TextOverflow.ellipsis,
                //style: TextStyle(color: Colors.black87,fontSize: 14),
              ),
              onTap: () {
                // Navigate to edit note screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditNoteScreen(noteId: id),
                  ),
                );
              },
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red.shade300),
                onPressed: () {
                  _deleteNoteFromDatabase(id);
                },
              ),
            ),
          );
        },
      ),
    );
  }

}
