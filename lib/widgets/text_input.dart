import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  Color textCollor;
  int numbers;
  bool isPassword;
  IconData? icon;
  TextInputType textInputType;

  TextInput({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.textCollor,
    required this.numbers,
    required this.textInputType,
    required this.isPassword,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      autocorrect: false,
      keyboardType: textInputType,
      maxLength: numbers,
      decoration: InputDecoration(
        suffixIcon: icon != null
            ? GestureDetector(
                onTap: () {},
                child: Icon(icon),
              )
            : const SizedBox.shrink(),
        hintText: hintText,
        fillColor: const Color.fromARGB(255, 245, 245, 245),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent)),
        hintStyle: GoogleFonts.poppins(color: Colors.grey),
        contentPadding: EdgeInsets.all(10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent)),
      ),
    );
  }
}
