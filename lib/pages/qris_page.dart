import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
// import 'package:image_gallery_saver/image_gallery_saver.dart';

class QrisPage extends StatelessWidget {
  const QrisPage({super.key, required this.qrCodeData});
  final String qrCodeData;

  @override
  Widget build(BuildContext context) {
    String url =
        'https://api.qrserver.com/v1/create-qr-code/?size=225x225&data=$qrCodeData';
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 247, 244),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                  width: 250,
                  height: 250,
                  child: FutureBuilder<http.Response>(
                      future: http.get(Uri.parse(url)),
                      builder: (BuildContext context,
                          AsyncSnapshot<http.Response> snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Text(
                                'Failed to load QR code image: ${snapshot.error}');
                          } else {
                            String qrCodeUrl = url;
                            return Image.network(qrCodeUrl);
                          }
                        } else {
                          return Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation(
                                    Color.fromARGB(255, 197, 95, 22)),
                              ),
                            ),
                          );
                        }
                      })),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'QRIS Lalapan Mbak Eli',
                    style: GoogleFonts.poppins(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 15, 23, 42)),
                  )
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Simpan  halaman ini dan lakukan pembayaran\n                         melalui m-bankingmu.',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 15, 23, 42)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 197, 95, 22)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    onPressed: () async {
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
                                    color: Color.fromARGB(255, 192, 38, 38)),
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
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(144, 49)),
                              ),
                              child: Text(
                                'Batal',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 15, 23, 42)),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      Size(144, 49)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 217, 62, 62))),
                              child: Text(
                                'Download',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              onPressed: () {},
                              // onPressed: () async {
                              //   Navigator.of(context).pop();
                              //   final response = await http.get(Uri.parse(url));
                              //   final bytes = response.bodyBytes;
                              //   await ImageGallerySaver.saveImage(bytes);
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //       content:
                              //           Text('QRIS image saved to gallery'),
                              //     ),
                              //   );
                              // },
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      'Download QRIS',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ));
  }
}
