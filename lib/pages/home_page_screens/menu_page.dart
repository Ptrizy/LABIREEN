import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/user_page/user_page.dart';
import 'package:labireen/widget/home_page/head_page.dart';
import 'package:labireen/widget/home_page/menu_item.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> jenisKantin = [
    'Bu Ridok',
    'Lalapan Mbak Eli',
    'Amazing Mie',
    'Warung Mimin'
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 247, 244),
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UserPage()));
                    },
                    child: HeadOfThreePage()),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 29, 15, 0),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Daftar Menu",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 15, 23, 42)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                        height: 44,
                        width: double.infinity,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: jenisKantin.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 240),
                                  // padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                                  margin: EdgeInsets.all(8),
                                  width: 80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: current == index
                                          ? Color.fromARGB(255, 231, 119, 40)
                                          : Color.fromARGB(122, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(17),
                                      border: current == index
                                          ? Border.all(
                                              color: Color.fromARGB(
                                                  255, 231, 119, 40))
                                          : Border.all(
                                              color: Color.fromARGB(
                                                  255, 236, 233, 229))),
                                  child: Center(
                                    child: Text(jenisKantin[index],
                                        style: current == index
                                            ? GoogleFonts.poppins(
                                                fontSize: 11.3,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 248, 250, 252))
                                            : GoogleFonts.poppins(
                                                fontSize: 11.3,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black)),
                                  ),
                                ),
                              );
                            })),
                    SizedBox(
                      height: 590,
                      child: GridView.builder(
                        itemCount: 25,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.718,
                          crossAxisCount: 2,
                        ),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              child: MenuItem(
                            menu: {},
                          ));
                        },
                      ),
                    )
                  ]),
                ),
              ],
            )));
  }
}

/*

 */
