import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              ),
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: 57,
                    ),
                    Text(
                      "Nama",
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(23, 0, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Nama",
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(23, 0, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(23, 0, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Nama",
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromARGB(255, 245, 245, 245),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(80, 0, 0, 0),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
