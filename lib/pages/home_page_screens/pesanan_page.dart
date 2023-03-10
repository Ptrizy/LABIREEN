import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/head_page.dart';

import '../../widget/home_page/pesanan_item.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  final List _antrianPesanan = [
    '66',
    '65',
    '64',
    '63',
    '62',
    '61',
    '60',
    '59',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: Column(children: [
        HeadOfThreePage(),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 29, 15, 0),
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
              ),
              SizedBox(
                height: 22,
              ),
              // ListView.builder(
              //         itemCount: _antrianPesanan.length,
              //         itemBuilder: (context, index) {
              //           return PesananItem(
              //             antrianPesanan: _antrianPesanan[index].toString(),
              //           );
              //         })
            ],
          ),
        )
      ]),
    );
  }
}
