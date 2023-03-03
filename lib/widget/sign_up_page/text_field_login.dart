import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldLogin extends StatelessWidget {
  TextFieldLogin(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure});
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        style: GoogleFonts.poppins(fontSize: 14),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(23, 0, 10, 5),
          border: InputBorder.none,
          hintText: text,
        ),
      ),
    );
  }
}
