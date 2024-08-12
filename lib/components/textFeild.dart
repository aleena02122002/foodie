import 'package:flutter/material.dart';
import 'package:hacroject/components/colors.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const MyTextField({super.key, required this. hintText, required this. controller, required this. prefixIcon, required this. focusNode, this. validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: 255,
        height: 45,
        child: TextFormField(
          style: TextStyle(color: whites,fontFamily: "SF"),
          cursorColor: Colors.white,
          focusNode: focusNode,
          controller: controller,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              labelText: hintText,
              labelStyle: TextStyle(
                fontFamily: "SF",
                color: whites
              ),
              prefixIcon: prefixIcon != null? Icon(prefixIcon) : null,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                borderSide: BorderSide(color: Colors.white),
              )
          ),
        ),
      ),
    );
  }
}
