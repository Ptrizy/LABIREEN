import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu.dart';

class TabMenuPage extends StatelessWidget {
  final int selected;
  final Function callback;
  final Menu menu;

  const TabMenuPage(
      {super.key,
      required this.selected,
      required this.callback,
      required this.menu});

  @override
  Widget build(BuildContext context) {
    final category = menu.kategori.keys.toList();

    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 32),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 180),
                  padding: EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index
                          ? Color.fromARGB(255, 231, 119, 40)
                          : Color.fromARGB(122, 255, 255, 255),
                      border: selected == index
                          ? Border.all(color: Color.fromARGB(255, 231, 119, 40))
                          : Border.all(
                              color: Color.fromARGB(255, 236, 233, 229))),
                  child: Text(
                    category[index],
                    style: selected == index
                        ? GoogleFonts.poppins(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 248, 250, 252))
                        : GoogleFonts.poppins(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 16,
              ),
          itemCount: category.length),
    );
  }
}
