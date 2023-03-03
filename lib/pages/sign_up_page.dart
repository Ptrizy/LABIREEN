import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/login_page.dart';
import 'package:labireen/widget/sign_up_page/button_login.dart';
import 'package:labireen/widget/sign_up_page/google_button_login.dart';
import 'package:labireen/widget/sign_up_page/text_field_login.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 148, 85),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 59),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo_putih.png',
                  height: 175,
                  width: 175,
                )
              ],
            ),
          ),
          Container(
            child: Text(
              "Sign Up",
              style: GoogleFonts.poppins(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 37,
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
                          obscure: false,
                        ),
                        SizedBox(
                          height: 24,
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
                          height: 24,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFieldLogin(
                            controller: nameController,
                            text: 'Password',
                            textInputType: TextInputType.visiblePassword,
                            obscure: true),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonLogin(
                          text: 'Daftar',
                          onClicked: () {/*masih kosong */},
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Sudah punya akun? ",
                            style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 197, 95, 22),
                                fontSize: 11),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "\Log In\ ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()));
                                    }),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          'atau',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color.fromARGB(255, 100, 116, 139)),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        ButtonGoogle(onClicked: () {/*masih kosong*/})
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(255, 245, 245, 245),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(40, 0, 0, 0),
                        blurRadius: 5,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
