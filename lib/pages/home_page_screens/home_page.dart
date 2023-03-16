import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labireen/pages/home_page_screens/pesanan_page.dart';
import 'package:labireen/widget/home_page/page_baru.dart';
import 'riwayat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [PageBaru(), PesananPage(), RiwayatPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 247, 244),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          unselectedItemColor: Color.fromARGB(255, 203, 213, 225),
          showUnselectedLabels: true,
          fixedColor: Color.fromARGB(255, 197, 95, 22),
          selectedLabelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dinner_dining),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_dining),
              label: "Riwayat",
            ),
          ],
        ));
  }
}
