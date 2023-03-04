import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key, required this.text, required this.onClicked});
  final String text;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Color.fromARGB(255, 231, 120, 40)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(6),
        shadowColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
        minimumSize: MaterialStateProperty.all<Size>(Size(373, 55)),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: Color.fromARGB(255, 248, 250, 252),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}