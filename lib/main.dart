import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labireen/pages/onboarding_page.dart';
import 'package:flutter/services.dart';
import 'package:labireen/widget/home_page/page_baru.dart';

import 'bloc/bloc/auth_bloc.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(create: (BuildContext context) => AuthBloc(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnboardingPage(),
      ),
    );
  }
}
