import 'package:flutter/material.dart';
import 'package:hacroject/components/colors.dart';

class SearchFeild extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const SearchFeild({super.key, required this. hintText, required this. controller, required this. prefixIcon, required this. focusNode, this. validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        cursorColor: Colors.white,
        focusNode: focusNode,
        controller: controller,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
           hintText: hintText,
            hintStyle:TextStyle(color: whites),
            prefixIcon: prefixIcon != null? Icon(prefixIcon) : null,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Colors.white),
            )
        ),
      ),
    );
  }
}
