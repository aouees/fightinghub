import 'dart:math';

import 'package:fightinghub/constant/my_colors.dart';
import 'package:fightinghub/constant/screen_size.dart';
import 'package:fightinghub/screens/my_component/button.dart';
import 'package:fightinghub/screens/my_component/custom_container.dart';
import 'package:fightinghub/screens/my_component/form_field.dart';
import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -getHeight(context) * .17,
            left: -getWidth(context) * .02,
            child: const CustomContainer(
              angle: pi * 1.4,
              title: "Verify",
              color: mySecondaryColor,
            ),
          ),
          Positioned(
            bottom: -getHeight(context) * .21,
            left: -getWidth(context) * .2,
            child: const CustomContainer(
              angle: 2 * pi / 3.5,
            ),
          ),
          Form(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(context) * 0.30,
                    ),
                    myTextField(
                      title: "Email *",
                      controller: emailController,
                      hintText: "example@gmail.com",
                    ),
                    myTextField(
                      title: "Username *",
                      controller: emailController,
                      hintText: "example",
                    ),
                    myTextField(
                      title: "Password *",
                      controller: emailController,
                      hintText: "**********",
                      isPassowrd: true,
                    ),
                    myTextField(
                        title: "OTP Number *",
                        controller: emailController,
                        hintText: "999999",
                        keyboardType: TextInputType.numberWithOptions()),
                    myElevatedButton(
                      icon: Icons.person_add,
                      label: "Submit",
                      onPressed: () {},
                    ),
                    myTextButton(
                      label: "haven't an OTP number ? ",
                      title: "Register",
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
