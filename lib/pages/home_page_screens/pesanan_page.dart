import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/head_page.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
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
                      "Pesanan",
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
