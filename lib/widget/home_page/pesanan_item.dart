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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Container(
                    height: 188,
                    width: 361,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 14),
                          child: Row(
                            children: [
                              Text(
                                'Antrian yang diproses: $antrianPesanan',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 197, 95, 22)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
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
                        SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Pesanan telah dikonfirmasi penjual',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 57, 66, 147)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 74,
                left: 8,
                width: 345,
                height: 65,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 218, 221, 241)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 50),
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
                                          color:
                                              Color.fromARGB(255, 30, 41, 59)))
                                ]))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 94,
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
                child: ClipPath(
                  clipper: LabelAntriClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 57, 66, 147)),
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
                ),
              ),
              Positioned(
                  top: 140,
                  left: 228,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 197, 95, 22)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Pesanan diterima',
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 248, 250, 252)),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class LabelAntriClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
