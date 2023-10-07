import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constraints.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: KPrimaryColor),
          child: Center(
            child: isLoading
                ? SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
                : Text(
                    'Add',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
          )),
    );
  }
}
