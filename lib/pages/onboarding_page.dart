import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:labireen/pages/login_page.dart';
import 'package:labireen/widget/onboarding_page/button_onboardpage.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
                title: 'Lorem Ipsum',
                body: 'Ayo pesan makanan mu di kantin FILKOM secara online!',
                image: buildImage('assets/logo_putih.png'),
                decoration: pageDecoration()),
            PageViewModel(
                title: 'Lorem Ipsum',
                body: 'Ayo pesan makanan mu di kantin FILKOM secara online!',
                image: buildImage('assets/logo_putih.png'),
                decoration: pageDecoration()),
            PageViewModel(
                title: 'Lorem Ipsum',
                body: 'Ayo pesan makanan mu di kantin FILKOM secara online!',
                image: buildImage('assets/logo_putih.png'),
                decoration: pageDecoration()),
            PageViewModel(
                title: 'Lorem Ipsum',
                body: 'Ayo pesan makanan mu di kantin FILKOM secara online!',
                image: buildImage('assets/logo_putih.png'),
                decoration: pageDecoration(),
                footer: ButtonWidget(
                    text: 'Pesan Sekarang',
                    onClicked: () => goToLoginPage(context)))
          ],
          done: Text(
            'Next',
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          onDone: () => goToLoginPage(context),
          showSkipButton: true,
          skip: Text('Skip'),
          next: Icon(Icons.arrow_forward_rounded),
        ),
      );
}

void goToLoginPage(context) => Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));

Widget buildImage(String path) => Center(
      child: Image.asset(
        path,
        width: 350,
      ),
    );

PageDecoration pageDecoration() => PageDecoration(
    titleTextStyle:
        GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: GoogleFonts.poppins(fontSize: 20),
    imagePadding: EdgeInsets.all(24),
    bodyPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    pageColor: Color.fromARGB(255, 236, 148, 85));
