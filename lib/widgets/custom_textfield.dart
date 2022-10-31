import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  CustomTextField({super.key, required this.hint,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        cursorColor: KMainColor,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon:Icon(
            icon,
            color: KMainColor,
          ) ,
          filled: true,
          fillColor: KSecondary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: Colors.white
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
