import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key, required this.onClicked});
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(3),
        shadowColor: MaterialStateProperty.all<Color>(Colors.grey.shade100),
        minimumSize: MaterialStateProperty.all<Size>(Size(373, 55)),
      ),
      child: Row(
        children: [
          Image.asset('assets/Google.png'),
          SizedBox(width: 49), // add space between Image and Text
          Text(
            'Lanjutkan dengan Google',
            style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 15, 23, 42),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 67), // add space between Text and Icon
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
            size: 12,
          ),
        ],
      ),
    );
  }
}
