import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key, required this.deskripsiTeks}) : super(key: key);

  final String deskripsiTeks;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
        minimumSize: MaterialStateProperty.all<Size>(Size(50, 24)),
        elevation: MaterialStateProperty.all<double>(2),
      ),
      onPressed: () {
        showBottomSheet<void>(
            context: context,
            builder: ((context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                    height: 290,
                    width: 400,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tambah notes',
                              style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 231, 119, 40)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(22, 16, 22, 102),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 226, 232, 240),
                                        width: 1)),
                                hintText: deskripsiTeks,
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 100, 116, 139)),
                              ),
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                'Oke',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 231, 119, 40)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                    Size(144, 49),
                                  ),
                                  elevation:
                                      MaterialStateProperty.all<double>(0.5)),
                            )
                          ],
                        ),
                      ],
                    )),
              );
            }));
      },
      child: Row(
        children: [
          Icon(
            Icons.note_add_rounded,
            color: Colors.black,
            size: 14,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            "Notes",
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
          )
        ],
      ),
    ));
  }
}
