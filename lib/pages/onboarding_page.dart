import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:labireen/pages/login_page.dart';
import 'package:labireen/pages/sign_up_page.dart';
import 'package:labireen/widget/onboarding_page/button_onboardpage.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) => IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'Order online',
              body: 'Order makanan mu di kantin FILKOM secara online!',
              image: buildImage('assets/onboarding1.png'),
              decoration: pageDecoration()),
          PageViewModel(
              title: 'Status pemesanan jelas',
              body: 'Ketahui nomor antrian dan pantau terus status pemesananmu',
              image: buildImage('assets/order.png'),
              decoration: pageDecoration()),
          PageViewModel(
            title: '',
            body: '',
            image: buildImage('assets/_splash.png'),
            decoration: PageDecoration(
              pageColor: Color.fromARGB(255, 251, 247, 244),
              imageFlex: 3,
              imagePadding: EdgeInsets.only(top: 80),
            ),
            footer: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      minWidth: 16,
                      height: 5,
                      child: ButtonWidget(
                        text: 'Sign Up',
                        onClicked: () => goToSignUpPage(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                                          builder: (context) => LoginPage()));
                                }),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
        done: Text(
          'Selesai',
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 231, 119, 40)),
        ),
        onDone: () {},
        showDoneButton: true,
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 231, 119, 40)),
        ),
        next: Icon(
          Icons.arrow_forward_rounded,
          color: Color.fromARGB(255, 231, 119, 40),
        ),
        dotsDecorator: dotsDecorator(),
        globalBackgroundColor: Color.fromARGB(255, 251, 247, 244),
        skipOrBackFlex: 0,
        nextFlex: 0,
      );
}

void goToSignUpPage(context) => Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (_) => SignUpPage()));

Widget buildImage(String path) => Center(
      child: Image.asset(
        path,
        width: 350,
      ),
    );

PageDecoration pageDecoration() => PageDecoration(
    titleTextStyle: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 231, 119, 40)),
    bodyTextStyle:
        GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
    titlePadding: EdgeInsets.only(top: 70),
    imagePadding: EdgeInsets.only(top: 155),
    bodyPadding: EdgeInsets.all(10),
    pageColor: Color.fromARGB(255, 251, 247, 244));

DotsDecorator dotsDecorator() => DotsDecorator(
      color: Color.fromARGB(255, 203, 213, 225),
      activeColor: Color.fromARGB(255, 236, 148, 85),
      size: Size(10, 10),
      activeSize: Size(20, 10),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
