import 'package:flutter/material.dart';

class Divider_ extends StatelessWidget {
  const Divider_({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Divider(
        color: Color.fromARGB(255, 117, 110, 110),
        height: 15,
        thickness: 4,
        indent: 175,
        endIndent: 175,
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
