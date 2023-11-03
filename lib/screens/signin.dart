import 'dart:math';

import 'package:fightinghub/constant/my_colors.dart';
import 'package:fightinghub/constant/screen_size.dart';
import 'package:fightinghub/screens/my_component/button.dart';
import 'package:fightinghub/screens/my_component/custom_container.dart';
import 'package:fightinghub/screens/my_component/form_field.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
              title: "SignIn",
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
                      title: "Email | username",
                      controller: emailController,
                      hintText: "example@gmail.com | username",
                    ),
                    myTextField(
                      title: "Password",
                      controller: emailController,
                      hintText: "**********",
                      isPassowrd: true,
                    ),
                    myElevatedButton(
                      icon: Icons.person_pin,
                      label: "LogIn",
                      onPressed: () {},
                    ),
                    myTextButton(
                      label: "haven't an account ? ",
                      title: "SignUp now",
                      onPressed: () {},
                    ),
                    myTextButton(
                      label: "Forget your Password ? ",
                      title: "Reset Now",
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
