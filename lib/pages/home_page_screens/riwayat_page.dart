import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/home_page_screens/home_page.dart';
import 'package:labireen/widget/home_page/head_page.dart';

import '../../widget/home_page/riwayat_item.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({super.key});

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  final List _riwayat = [
    'Ayam Goreng',
    'Ayam Crispy',
    'Tahu Telor',
    'Rawon',
    'Mie Kuah Single',
    'Mie Goreng Double'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: Column(
        children: [
          HeadOfThreePage(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 29, 15, 0),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "Hari ini",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 280,
                  child: ListView.builder(
                      itemCount: _riwayat.length,
                      itemBuilder: ((context, index) {
                        return RiwayatItem(
                          jumlahRiwayat: _riwayat[index],
                        );
                      })),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
