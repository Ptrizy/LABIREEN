import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/user_page/user_page.dart';
import 'package:labireen/widget/sign_up_page/text_field_login.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => UserPage()));
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Ubah profil',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 124),
            child: Center(
              child: Column(children: [
                ClipOval(
                  child: Image.asset(
                    'assets/default_profile.png',
                    width: 125,
                    height: 125,
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 26, 16, 0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Handedius Sando S',
                    style: GoogleFonts.poppins(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 15, 23, 42)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'sando.dogu@gmail.com',
                    style: GoogleFonts.poppins(
                        fontSize: 15.2,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 15, 23, 42)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Ganti foto',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )),
                  SizedBox(
                    height: 34,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nama",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFieldLogin(
                      controller: nameController,
                      text: 'Nama',
                      textInputType: TextInputType.name,
                      obscure: false),
                  SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFieldLogin(
                      controller: emailController,
                      text: 'Email',
                      textInputType: TextInputType.emailAddress,
                      obscure: false),
                  SizedBox(
                    height: 140,
                  ),
                  ElevatedButton(
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
                                  'Perubahan berhasil!',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 91, 195, 55)),
                                ),
                              ],
                            ),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Perubahan pada profilemu sudah disimpan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            actions: [
                              Center(
                                child: ElevatedButton(
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
                                              Size(280, 49)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 147, 217, 120))),
                                  child: Text(
                                    'Oke',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Text(
                        'Simpan',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                  Container(
                    height: 90,
                    width: 320,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
