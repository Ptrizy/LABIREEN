import 'package:flutter/material.dart';

class ResetPassProfile extends StatelessWidget {
  const ResetPassProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 247, 244),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_outlined,
          size: 40,
        ),
      ),
    );
  }
}
