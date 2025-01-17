
import 'package:book_shop/commen/color_extenstion.dart';
import 'package:flutter/material.dart';
class RoundTextField extends StatelessWidget {

  final TextEditingController controller;

  final String hintText ;

  final TextInputType? keyboardType;

  final bool obscureText;
 RoundTextField({super.key, required this.controller, required this.hintText, this.obscureText = false, this.keyboardType });

 var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: TColor.textbox, borderRadius: BorderRadius.circular(20)),
      child: Form(
        key: formkey,
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            hintText: hintText,
            labelStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
