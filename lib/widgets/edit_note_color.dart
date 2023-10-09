import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/constraints.dart';

class EditNotesColor extends StatefulWidget {
  const EditNotesColor({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesColor> createState() => _EditNotesColorState();
}

class _EditNotesColorState extends State<EditNotesColor> {
  late int currentIndex;

  @override
  void initState() {
    
    currentIndex = Kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: Kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = Kcolors[index].value;

                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: ColorsItem(
                  color: Kcolors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
