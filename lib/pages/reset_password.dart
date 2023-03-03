import 'package:flutter/material.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 247, 244),
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
      ),
    );
  }
}
