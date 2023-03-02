import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(23, 0, 0, 0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: "Nama"),
    );
  }
}
