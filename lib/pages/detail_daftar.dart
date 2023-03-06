import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDaftar extends StatelessWidget {
  const DetailDaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 120, 18, 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('assets/letter.png')],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Yuk, cek emailmu!',
                    style: GoogleFonts.poppins(
                        fontSize: 32, fontWeight: FontWeight.w700)),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kami telah mengirimkan link verifikasi ke email kamu ',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
