import 'package:flutter/material.dart';
import 'package:labireen/pages/onboarding_page.dart';
import 'pages/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
