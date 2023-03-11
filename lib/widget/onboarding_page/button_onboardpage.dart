import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => Center(
          child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 231, 119, 40)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(0),
          minimumSize: MaterialStateProperty.all<Size>(Size(330, 57)),
        ),
        onPressed: onClicked,
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 248, 250, 252),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ));
}
