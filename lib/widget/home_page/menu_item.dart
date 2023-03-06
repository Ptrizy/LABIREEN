import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        childAspectRatio: 0.718,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for (int i = 0; i < 10; i++)
            Container(
              height: 1000,
              padding: EdgeInsets.only(left: 16, right: 15),
              margin: EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(19.5, 20, 19.5, 8),
                          child: Image.asset(
                            'assets/ayam_lingkar.png',
                            height: 105,
                            width: 110,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ayam Goreng",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp 12.000",
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 45,
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
        ],
      ),
    );
  }
}
