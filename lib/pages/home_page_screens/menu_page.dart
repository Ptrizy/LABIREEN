import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/head_page.dart';
import 'package:labireen/widget/home_page/tab_menu_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: Column(
        children: [
          HeadOfThreePage(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 38, 15, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Daftar Menu",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 15, 23, 42)),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    TabMenuPage(textPath: "Bu Ridok"),
                    SizedBox(
                      width: 11,
                    ),
                    TabMenuPage(textPath: "Lalapan Mbak Eli"),
                    SizedBox(
                      width: 11,
                    ),
                    TabMenuPage(textPath: "Amazing Mie"),
                    SizedBox(
                      width: 11,
                    ),
                    TabMenuPage(textPath: "Warung Mimin"),
                    SizedBox(
                      width: 11,
                    ),
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
