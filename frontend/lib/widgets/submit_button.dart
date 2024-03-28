import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
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
                Color.fromARGB(
                    255, 251, 250, 250), // Mild black shade at the top
                Color.fromARGB(255, 217, 209, 209),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            child: Center(
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 90, 89, 89),
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
  // Color.fromARGB(255, 90, 89, 89), // Mild black shade at the top
  //               Color.fromARGB(255, 53, 52, 52),