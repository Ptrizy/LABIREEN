import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/home_page_screens/home_page.dart';
import 'package:labireen/pages/login_page.dart';
import 'package:labireen/pages/reset_password_profile.dart';
import 'package:labireen/pages/user_page/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 148, 85),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomePage()));
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
                  'Profil',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                        child: Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: Container(
                        height: 600.6,
                        width: 393,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 251, 247, 244),
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 70, 16, 0),
                          child: Center(
                            child: Column(children: [
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
                                height: 48,
                              ),
                              ButtonUserPage(
                                onClicked: () => goToUserProfile(context),
                                titleButton: 'Ubah profil',
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              ButtonUserPage(
                                onClicked: () =>
                                    goToResetPasswordProfile(context),
                                titleButton: 'Ganti password',
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              ButtonUserPage(
                                onClicked: () => {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Kontak kami',
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 91, 195, 55)),
                                          ),
                                        ],
                                      ),
                                      content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Silahkan klik tombol dibawah untuk\n    mengarahkanmu langsung ke\n                 whatsapp kami',
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
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                        Size>(Size(280, 49)),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(
                                                            255, 91, 195, 55))),
                                            child: Text(
                                              'Menuju whatsapp',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                            onPressed: () async {
                                              String whatsappUrl =
                                                  "https://wa.me/6281290817870?text=Saya%20butuh%20bantuan%20untuk%20aplikasi%20labireen%20ini";
                                              final Uri url =
                                                  Uri.parse(whatsappUrl);
                                              await launchUrl(url,
                                                  mode: LaunchMode
                                                      .externalApplication);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                },
                                titleButton: 'Bantuan',
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              ButtonUserPage(
                                onClicked: () => {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Pengingat!',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromARGB(
                                                          255, 192, 38, 38)),
                                                ),
                                              ],
                                            ),
                                            content: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Kamu yakin ingin mengeluarkan akunmu?',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              OutlinedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                    ),
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                Size(144, 49)),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'Periksa kembali',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 15, 23, 42)),
                                                  )),
                                              ElevatedButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty
                                                          .all<
                                                              RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      minimumSize:
                                                          MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  144, 49)),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(Color
                                                                  .fromARGB(
                                                                      255,
                                                                      217,
                                                                      62,
                                                                      62))),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                LoginPage()));
                                                  },
                                                  child: Text(
                                                    'Oke',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  ))
                                            ],
                                          ))
                                },
                                titleButton: 'Sign Out',
                              ),
                            ]),
                          ),
                        ),
                      ),
                    )),
                    Positioned(
                      top: 120,
                      left: 134,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/default_profile.png',
                          width: 125,
                          height: 125,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

void goToUserProfile(context) => Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (_) => UserProfile()));

void goToResetPasswordProfile(context) => Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (_) => ResetPassProfile()));

class ButtonUserPage extends StatelessWidget {
  const ButtonUserPage({
    super.key,
    required this.titleButton,
    required this.onClicked,
  });

  final String titleButton;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClicked,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        minimumSize: MaterialStateProperty.all<Size>(Size(328, 54)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          children: [
            Text(
              titleButton,
              style: GoogleFonts.poppins(
                  fontSize: 15.1,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 15, 23, 42)),
            ),
          ],
        ),
      ),
    );
  }
}
