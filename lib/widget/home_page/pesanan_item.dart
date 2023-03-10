import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PesananItem extends StatelessWidget {
  const PesananItem({
    super.key,
    required this.antrianPesanan,
  });
  final String antrianPesanan;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Container(
                  height: 180,
                  width: 361,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 16),
                        child: Row(
                          children: [
                            Text(
                              'Antrian yang diproses: $antrianPesanan',
                              style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 197, 95, 22)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Text(
                              'Ambil sendiri',
                              style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 100, 116, 139)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 86),
                        child: Text(
                          'Pesanan telah dikonfirmasi penjual',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 57, 66, 147)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 62,
              left: 8,
              width: 345,
              height: 65,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 218, 221, 241)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12, left: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Ayam Goreng',
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'sambel bawang',
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 100, 116, 139)),
                          ),
                          SizedBox(
                            width: 166,
                          ),
                          Text(
                            'Rp 10.000',
                            style: GoogleFonts.poppins(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: '\Notes: \ ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 30, 41, 59)),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: 'Ga pake daun kemangi',
                                    style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 30, 41, 59)))
                              ]))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 82,
                left: 14,
                width: 32,
                height: 25,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 145, 152, 212)),
                  child: Center(
                    child: Text(
                      '2x',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 248, 250, 252)),
                    ),
                  ),
                )),
            Positioned(
                left: 292,
                width: 44,
                height: 56,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 57, 66, 147)),
                  child: ClipPath(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(2, 8, 2, 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Antrian',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                antrianPesanan,
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
