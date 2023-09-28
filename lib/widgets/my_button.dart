// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  Color backgroundColor;
  Color textColor;
  String text;
  void Function()? onTap;
  bool isLoaded;

  MyButton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.onTap,
    required this.isLoaded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoaded
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GestureDetector(
            onTap: onTap,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
  }
}
