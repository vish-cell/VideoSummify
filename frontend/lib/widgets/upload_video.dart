import 'package:flutter/material.dart';

class UploadVideo extends StatelessWidget {
  const UploadVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 280,
          height: 175,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 124, 88, 207),
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_upload_outlined,
                size: 30,
                color: Colors.white60,
              ),
              Text(
                'Upload video',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
