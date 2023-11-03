import 'package:fightinghub/constant/my_colors.dart';
import 'package:flutter/material.dart';

Widget myTextField({
  required String title,
  required controller,
  String? hintText,
  TextInputType? keyboardType,
  String? Function(String?)? validator,
  bool isPassowrd = false,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          controller: controller,
          obscureText: isPassowrd,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            fillColor: myGrayColor,
            hintText: hintText,
            filled: true,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: myPrimeryColor,
                width: 2.5,
              ),
            ),
          ),
          cursorColor: myPrimeryColor,
          keyboardType: keyboardType,
          validator: validator,
        )
      ],
    ),
  );
}
