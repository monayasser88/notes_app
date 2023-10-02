import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_notes_item_widget.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteWidget(),
    );
  }
}