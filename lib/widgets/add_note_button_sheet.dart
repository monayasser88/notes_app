import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NoteButtonSheet extends StatelessWidget {
  const NoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                hint: 'title',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: 'content',
                maxLines: 5,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
    );
  }
}
