import 'package:flutter/material.dart';

class mytext extends StatelessWidget {
  final controller;
  final String hinttext;
  final keyb;
  final ic;
  final bool obsecureText;
  const mytext(
      {super.key,
      required this.keyb,
      required this.ic,
      required this.controller,
      required this.hinttext,
      required this.obsecureText});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: SizedBox(
        width: 330,
        height: 45,
        child: TextField(
          controller: controller,
          keyboardType: keyb,
          obscureText: obsecureText,
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontFamily: 'Spectral'),
          decoration: InputDecoration(
            prefixIcon: ic,
            hintText: hinttext,
            hintStyle:
                TextStyle(fontSize: 16, color: Color.fromARGB(112, 0, 0, 0)),
            fillColor: Colors.white.withOpacity(0.5),
            filled: true,
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(188, 27, 125, 211))),
          ),
        ),
      ),
    );
  }
}
