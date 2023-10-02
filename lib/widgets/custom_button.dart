import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constraints.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: KPrimaryColor),
      child: Center(
          child: Text(
        'Add',
        style: TextStyle(color: Colors.black, fontSize: 20),
      )),
    );
  }
}
