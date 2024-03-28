import 'package:flutter/material.dart';
import 'package:frontend/widgets/divider.dart';
import 'package:frontend/widgets/submit_button.dart';
import 'package:frontend/widgets/upload_video.dart';

class CustomisedBottomSheet extends StatelessWidget {
  const CustomisedBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 25,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider_(),
          UploadVideo(),
          SubmitButton(),
        ],
      ),
    );
  }
}
