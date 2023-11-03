import 'package:flutter/material.dart';

import '../../constant/my_colors.dart';

Widget myStadiumButton({
  required IconData icon,
  required String label,
  required void Function()? onPressed,
}) {
  return FilledButton.icon(
    onPressed: onPressed,
    icon: Icon(
      icon,
      size: 30,
    ),
    label: Text(
      label,
      style: const TextStyle(fontSize: 20),
    ),
    style: const ButtonStyle(
      side: MaterialStatePropertyAll(
        BorderSide(
          color: myWhiteColor,
        ),
      ),
    ),
  );
}

Widget myElevatedButton({
  required IconData icon,
  required String label,
  required void Function()? onPressed,
}) {
  return Container(
    width: double.infinity,
    child: ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    ),
  );
}

Widget myTextButton({
  required String label,
  required String title,
  required void Function()? onPressed,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 15),
          ),
          TextButton(
              onPressed: onPressed,
              child: Text(
                title,
                style: const TextStyle(fontSize: 15),
              )),
        ],
      ),
    ),
  );
}
