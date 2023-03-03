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
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(6),
          shadowColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
          minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)),
        ),
        onPressed: onClicked,
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ));
}
