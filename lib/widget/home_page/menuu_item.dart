import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../pages/detail_menu_page.dart';
import 'makanan.dart';

class MenuuItem extends StatelessWidget {
  const MenuuItem({super.key, required this.makanan});

  final Makanan makanan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailMenu()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 12, 0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(18, 10, 18, 8),
                          child: Image.asset(
                            makanan.imgUrl,
                            height: 110,
                            width: 105,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      makanan.namaMakanan,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'stok: ',
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 100, 116, 139))),
                        TextSpan(
                            text: makanan.stok,
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Color.fromARGB(255, 100, 116, 139))),
                        TextSpan(
                            text: ' porsi',
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Color.fromARGB(255, 100, 116, 139)))
                      ]),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 7.5,
                  ),
                  Row(
                    children: [
                      Text(
                        makanan.harga,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 58,
                      ),
                      Icon(
                        Icons.add_circle_rounded,
                        color: Color.fromARGB(255, 197, 95, 22),
                        size: 33,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
