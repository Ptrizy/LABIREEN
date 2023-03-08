import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/head_page.dart';

class QrisPage extends StatelessWidget {
  const QrisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 247, 244),
        body: Column(
          children: [
            HeadOfThreePage(),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 197, 95, 22)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    elevation: MaterialStateProperty.all<double>(6),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade300),
                    minimumSize: MaterialStateProperty.all<Size>(Size(362, 62)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Download QRIS',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ));
  }
}
