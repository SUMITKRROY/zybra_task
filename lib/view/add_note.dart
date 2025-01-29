import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';


import '../provider/notes/notes_bloc.dart';
import '../utils/widgets/button.dart';
import '../utils/widgets/custom_TextFeild.dart';

class AddNoteScreen extends StatefulWidget {
  String index;
    AddNoteScreen({Key? key,required this.index}) : super(key: key);

  @override
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the Form

  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  TextEditingController _idController = TextEditingController();

  @override
  void initState() {
    super.initState();
    generateUuid();
  }

  // Function to generate and store UUID in the global variable
  void generateUuid() {
    var uuid = Uuid();
    _idController.text =
        uuid.v4(); // Store the generated UUID in the global variable
    // Print the generated UUID
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Note",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // Assign the GlobalKey to the Form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    'Note No. ${widget.index}', // Convert widget.index to string
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 12.0),
                CustomTextField(
                  label: 'Title',
                  onChanged: (val) => {},
                  controller: _titleController,
                  keyboardType: TextInputType.text, validatorLable: 'title',

                ),
                SizedBox(height: 12.0),
                CustomTextField(
                  label: 'Content',
                  onChanged: (val) => {},
                  controller: _contentController,
                  keyboardType: TextInputType.text, validatorLable: 'Content',maxline: 5,

                ),
                SizedBox(height: 12.0),
                CustomButton(onPressed: saveDataToTable, label: "Save")
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveDataToTable() {
    if (_formKey.currentState!.validate()) {
      String id = _idController.text;
      String title = _titleController.text;
      String content = _contentController.text;

      BlocProvider.of<NotesBloc>(context).add(
        NoteSuccessEvent(id: id, title: title, content: content),
      );
      BlocProvider.of<NotesBloc>(context).add(
        NotegetEvent(),
      );
      Navigator.pop(context);
    }
  }
}


