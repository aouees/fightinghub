import 'dart:math';

import 'package:fightinghub/constant/my_colors.dart';
import 'package:fightinghub/constant/screen_size.dart';
import 'package:fightinghub/screens/my_component/button.dart';
import 'package:fightinghub/screens/my_component/custom_container.dart';
import 'package:fightinghub/screens/my_component/form_field.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -getHeight(context) * .15,
            left: -getWidth(context) * .2,
            child: const CustomContainer(
              angle: pi * 1.4,
              title: "Reset Password",
            ),
          ),
          Positioned(
            bottom: -getHeight(context) * .11,
            left: -getWidth(context) * .42,
            child: const CustomContainer(
              angle: 3 * pi / 3.5,
              color: mySecondaryColor,
            ),
          ),
          Positioned(
            bottom: getHeight(context) * .05,
            right: -getWidth(context) * .42,
            child: const CustomContainer(
              angle: pi / 6,
              color: mySecondaryColor,
            ),
          ),
          Form(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(context) * 0.35,
                    ),
                    myTextField(
                      title: "OTP",
                      controller: emailController,
                      hintText: "999999",
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                    myTextField(
                      title: "new Password",
                      controller: emailController,
                      hintText: "*********",
                    ),
                    myElevatedButton(
                      icon: Icons.email,
                      label: "Submit",
                      onPressed: () {},
                    ),
                    myTextButton(
                      label: "No OTP received ? ",
                      title: "Resend",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 5,
            left: 10,
            child: BackButton(),
          ),
        ],
      ),
    );
  }
}
