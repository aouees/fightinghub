import 'package:fightinghub/constant/my_colors.dart';
import 'screens/forget_password.dart';
import 'screens/home.dart';
import 'screens/reset_password.dart';
import 'screens/signin.dart';
import 'screens/signup.dart';
import 'package:flutter/material.dart';

import 'screens/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: myPrimeryColor,
          onPrimary: myWhiteColor,
        ),
      ),
      home: const Verify(),
    );
  }
}
