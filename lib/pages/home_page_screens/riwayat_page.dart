import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/head_page.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({super.key});

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: Column(
        children: [
          HeadOfThreePage(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 38, 15, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Riwayat",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 15, 23, 42)),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
