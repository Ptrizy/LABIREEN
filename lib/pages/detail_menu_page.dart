import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/receipt_page.dart';

class DetailMenu extends StatefulWidget {
  const DetailMenu({
    super.key,
  });

  @override
  State<DetailMenu> createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2.1,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Lalapan Mbak Eli',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
                child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 250,
                        height: 235,
                        child: Image.asset(
                          'assets/ayam_lingkar.png',
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ayam Goreng',
                      style: GoogleFonts.poppins(
                          fontSize: 28, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'stok: ',
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 100, 116, 139))),
                        TextSpan(
                            text: '250 porsi',
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Color.fromARGB(255, 100, 116, 139)))
                      ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.remove_circle,
                          color: Color.fromARGB(255, 197, 95, 22),
                          size: 33,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.poppins(
                              fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.add_circle_rounded,
                          color: Color.fromARGB(255, 197, 95, 22),
                          size: 33,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 16, 49),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Pilihan sambal',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(360, 48)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                              child: Text(
                                'Sambal bawang',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(360, 49)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                              child: Text(
                                'Sambal ijo',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(40, 0, 0, 0),
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total Harga',
                              style: GoogleFonts.poppins(fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp 12.000',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 197, 95, 22)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 70),
                    Column(
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReceiptPage()));
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 197, 95, 22)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                elevation: MaterialStateProperty.all<double>(6),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.grey.shade300),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(210, 62)),
                              ),
                              child: Text(
                                'Masukkan keranjang',
                                style: GoogleFonts.poppins(
                                    color: Color.fromARGB(255, 248, 250, 252),
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
