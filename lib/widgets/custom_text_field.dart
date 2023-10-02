import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constraints.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
          border: BuildBorder(),
          focusedBorder: BuildBorder(KPrimaryColor),
          hintText: 'title',
          hintStyle: TextStyle(color: KPrimaryColor)),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
