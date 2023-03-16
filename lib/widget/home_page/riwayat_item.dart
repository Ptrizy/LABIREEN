import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../pages/home_page_screens/home_page.dart';

class RiwayatItem extends StatelessWidget {
  const RiwayatItem({
    required this.jumlahRiwayat,
    super.key,
  });

  final String jumlahRiwayat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Container(
        width: 361,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 8, bottom: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          jumlahRiwayat,
                          style: GoogleFonts.poppins(
                              fontSize: 16.5,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 15, 23, 42)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Kantin Lalapan Mbak Eli',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 100, 116, 139)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          '1  x  Rp 12.000',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 100, 116, 139)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 197, 95, 22)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        child: Text('Pesan lagi',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/ayam_lingkar.png',
                        height: 122,
                        width: 118,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
