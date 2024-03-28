import "package:flutter/material.dart";

class CustomisedAppBar extends StatelessWidget {
  const CustomisedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.5, top: 60.0),
      child: Row(
        children: [
          const Text(
            "techverse",
            style: TextStyle(
              fontFamily: 'EuropaGroteskSHReg',
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 125.0),
            child: CircleAvatar(
              radius: 19,
              backgroundImage: AssetImage('assets/avatar.avif'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.5),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.5, horizontal: 11),
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "PRO",
                style: TextStyle(
                  fontSize: 13.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
