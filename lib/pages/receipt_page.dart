import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/home_page_screens/home_page.dart';
import 'package:labireen/pages/qris_page.dart';
import 'package:labireen/widget/home_page/notes.dart';

class ReceiptPage extends StatefulWidget {
  const ReceiptPage({Key? key}) : super(key: key);

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  List<String> metode = [
    'Pilih metode pengambilan',
    'Ambil sendiri',
    'Diantar'
  ];
  String? selectedMetode = 'Pilih metode pengambilan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lalapan Ayam',
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
                      Text(
                        'Rp 12.000',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 197, 95, 22)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Notes(
                          deskripsiTeks:
                              'Tulis kostumisasi pesananmu disini...')
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
                                    'assets/ayam_lingkar.png',
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
                                '2',
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
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      elevation: MaterialStateProperty.all<double>(1.2),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.grey.shade50),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(108, 29)),
                    ),
                    child: Text(
                      'Tambah pesanan',
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 71, 82, 182)),
                    )),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 32),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Metode pengambilan pesanan",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Center(
                        child: SizedBox(
                          height: 60,
                          width: 360,
                          child: DropdownButtonFormField<String>(
                            icon: Icon(Icons.arrow_drop_down_rounded),
                            iconSize: 28,
                            decoration: InputDecoration(
                                hintText: selectedMetode,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32),
                                    borderSide: BorderSide(width: 0.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32),
                                    borderSide: BorderSide(width: 0.5))),
                            value: selectedMetode,
                            items: metode
                                .map((metode) => DropdownMenuItem<String>(
                                      value: metode,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          metode,
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 100, 116, 139)),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            onChanged: (metode) =>
                                setState(() => selectedMetode = metode),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Notes(deskripsiTeks: "Tulis deskripsi lokasi disini...")
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rincian pembayaran',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        "Ayam Goreng",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 100, 116, 139)),
                      ),
                      SizedBox(
                        width: 186,
                      ),
                      Text(
                        "1  x  Rp 12.000",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 15, 23, 42)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        "Ayam Goreng",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 100, 116, 139)),
                      ),
                      SizedBox(
                        width: 186,
                      ),
                      Text(
                        "1  x  Rp 12.000",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 15, 23, 42)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 100, 116, 139),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Text(
                        'Total\npembayaran',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 15, 23, 42)),
                      ),
                      SizedBox(
                        width: 183,
                      ),
                      Text(
                        'Rp 24.000',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 197, 95, 22)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(40, 0, 0, 0),
                    blurRadius: 5,
                  )
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 197, 95, 22)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(6),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade300),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(362, 62)),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Pengingat!',
                                        style: GoogleFonts.poppins(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 192, 38, 38)),
                                      ),
                                    ],
                                  ),
                                  content: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Pastikan pesananmu sudah sesuai\n sebelum melakukan pembayaran',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    OutlinedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          minimumSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(144, 49)),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReceiptPage()));
                                        },
                                        child: Text(
                                          'Periksa kembali',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 15, 23, 42)),
                                        )),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            minimumSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(144, 49)),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        255, 217, 62, 62))),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      QrisPage(
                                                        qrCodeData:
                                                            'Lalapan Mbak Eli',
                                                      )));
                                        },
                                        child: Text(
                                          'Oke',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ))
                                  ],
                                ));
                      },
                      child: Text(
                        'Lanjutkan pembayaran',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
