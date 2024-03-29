import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadOfThreePage extends StatelessWidget {
  const HeadOfThreePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 24, left: 20, right: 20),
        height: 110,
        width: 420,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 245, 245),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(40, 0, 0, 0),
              blurRadius: 5,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halo, Handedius!',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 15, 23, 42)),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Mau makan apa hari ini?',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 100, 116, 139)),
                )
              ],
            ),
            SizedBox(
              width: 143,
            ),
            CircleAvatar(
              radius: 27,
              backgroundColor: Colors.grey,
              foregroundImage: AssetImage('assets/default_profile.png'),
            )
          ],
        ),
      ),
    );
  }
}
