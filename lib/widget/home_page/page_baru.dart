import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/widget/home_page/head_page.dart';
import 'package:labireen/widget/home_page/menu.dart';
import 'package:labireen/widget/home_page/tab_menu_page.dart';
import '../../pages/user_page/user_page.dart';
import 'menu_makanan_list.dart';

class PageBaru extends StatefulWidget {
  const PageBaru({Key? key}) : super(key: key);

  @override
  State<PageBaru> createState() => _PageBaruState();
}

class _PageBaruState extends State<PageBaru> {
  var selected = 0;
  final pageController = PageController();
  final menu = Menu.generateMenu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UserPage()));
            },
            child: HeadOfThreePage(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 29, 15, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Daftar Menu",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 15, 23, 42)),
              ),
            ),
          ),
          TabMenuPage(
            selected: selected,
            callback: (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },
            menu: menu,
          ),
          Expanded(
            child: MenuMakananList(
              selected: selected,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController: pageController,
              menu: menu,
            ),
          ),
        ],
      ),
    );
  }
}
