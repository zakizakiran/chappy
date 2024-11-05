import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextInputAction textInputAction;
  final TextInputType textInputType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.textInputAction,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 14,
      ),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      cursorColor: HexColor('120D26'),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: HexColor('807A7A'),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.grey[400],
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: HexColor('120D26'),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
