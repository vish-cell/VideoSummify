import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 35,
        left: 22.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ATOMIC AI CREATION",
            style: TextStyle(
              fontFamily: 'Mono91',
              color: Color.fromARGB(255, 124, 88, 207),
              fontSize: 16.8,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "AI-powered creativity enhancement.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
