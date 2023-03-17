import 'package:flutter/material.dart';

class ReuseableSnackbar {
  static showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }
}
