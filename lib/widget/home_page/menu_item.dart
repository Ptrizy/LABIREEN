import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/detail_menu_page.dart';

import 'menu.dart';

class MenuItem extends StatelessWidget {
  MenuItem({
    super.key,
    required menu,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 500,
        padding: EdgeInsets.only(left: 15, right: 15),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(18.5, 20, 18.5, 8),
                        child: Image.asset(
                          'assets/ayam_lingkar.png',
                          height: 110,
                          width: 105,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Ayam Goreng",
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
                          text: '250 porsi',
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
                      "Rp 12.000",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 42,
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
    );
  }
}
