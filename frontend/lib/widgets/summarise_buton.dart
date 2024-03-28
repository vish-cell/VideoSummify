import 'package:flutter/material.dart';
import 'customised_bottom_sheet.dart';

class SummariseButton extends StatelessWidget {
  const SummariseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 435, left: 50, right: 50),
      child: GestureDetector(
        onTap: () {
          bottomSheet(context);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 90, 89, 89), // Mild black shade at the top
                Color.fromARGB(255, 53, 52, 52),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: Text(
                'Summarise',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void bottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
    ),
    backgroundColor: const Color.fromARGB(255, 53, 52, 52),
    builder: (BuildContext context) {
      return const CustomisedBottomSheet();
    },
  );
}
