import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NoteButtonSheet extends StatelessWidget {
  const NoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 24,),
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}
