import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/makanan.dart';

import 'notes.dart';

class CardReceiptPage extends StatefulWidget {
  const CardReceiptPage({super.key, required this.makanan});

  final Makanan makanan;
  @override
  State<CardReceiptPage> createState() => _CardReceiptPageState();
}

class _CardReceiptPageState extends State<CardReceiptPage> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Container(
      padding: EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 20),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.makanan.namaMakanan,
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Pilihan sambal : Sambal bawang',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 100, 116, 139)),
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Rp ',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 197, 95, 22))),
                  TextSpan(
                      text: widget.makanan.harga,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 197, 95, 22))),
                ],
              )),
              SizedBox(
                height: 5,
              ),
              Notes(deskripsiTeks: 'Tulis kostumisasi pesananmu disini...')
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 110,
                          height: 106,
                          child: Image.asset(
                            widget.makanan.imgUrl,
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle,
                        color: Color.fromARGB(255, 197, 95, 22),
                        size: 26,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        '1',
                        style: GoogleFonts.poppins(
                            fontSize: 19, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Icon(
                        Icons.add_circle_rounded,
                        color: Color.fromARGB(255, 197, 95, 22),
                        size: 26,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
