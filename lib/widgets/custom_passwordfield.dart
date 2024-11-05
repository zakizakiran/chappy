import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: HexColor('120D26'),
      style: const TextStyle(
        fontSize: 14,
      ),
      obscureText: passenable,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock_outline_rounded,
        ),
        prefixIconColor: Colors.grey[700],
        hintText: 'Password',
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.grey[400],
        ),
        suffixIcon: IconButton(
          splashColor: Colors.transparent,
          onPressed: () {
            setState(() {
              if (passenable) {
                passenable = false;
              } else {
                passenable = true;
              }
            });
          },
          icon: Icon(
            passenable == true
                ? Icons.visibility_off_rounded
                : Icons.visibility_rounded,
            color: Colors.grey[400],
          ),
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
