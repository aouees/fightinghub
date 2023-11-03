import 'dart:math';

import 'package:fightinghub/constant/my_colors.dart';
import 'package:fightinghub/constant/screen_size.dart';
import 'package:fightinghub/screens/my_component/button.dart';
import 'package:fightinghub/screens/my_component/custom_container.dart';
import 'package:fightinghub/screens/my_component/form_field.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -getHeight(context) * .11,
            right: -getWidth(context) * .2,
            child: const CustomContainer(
              angle: -pi / 3.5,
              title: "SignUP",
            ),
          ),
          Positioned(
            bottom: -getHeight(context) * .21,
            left: -getWidth(context) * .2,
            child: const CustomContainer(
              angle: 2 * pi / 3.5,
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
                      title: "Email",
                      controller: emailController,
                      hintText: "example@gmail.com",
                    ),
                    myElevatedButton(
                      icon: Icons.group_add,
                      label: "Register",
                      onPressed: () {},
                    ),
                    myTextButton(
                      label: "Already have an account ? ",
                      title: "SignIn now",
                      onPressed: () {},
                    ),
                    myTextButton(
                      label: "Already have an OTP ? ",
                      title: "Verify your email",
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
