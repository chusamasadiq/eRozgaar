import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({required this.hintText, required this.preIcon, required this.controller, this.postIcon, this.obscure = false});

  String hintText;
  IconData preIcon;
  IconData? postIcon;
  TextEditingController controller = TextEditingController();
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(preIcon,
          color: Color(0xff303F4A),
        ),
        suffixIcon: Icon(postIcon,
          color: Color(0xff323F4B),
        ),
        fillColor: const Color(0xffF8F9FA),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffe4e7eb),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffe4e7eb),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
