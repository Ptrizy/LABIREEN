import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabMenuPage extends StatelessWidget {
  final String textPath;

  const TabMenuPage({super.key, required this.textPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Text(
                textPath,
                style: GoogleFonts.poppins(
                    fontSize: 11, fontWeight: FontWeight.w500),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black12)]),
            ),
          ),
        ),
      ),
    );
  }
}
