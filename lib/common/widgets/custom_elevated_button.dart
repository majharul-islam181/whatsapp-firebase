import 'package:flutter/material.dart';
import 'package:whatsapp_firebase/common/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.greenDark,
            foregroundColor: AppColors.backgroundColor,
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: Colors.transparent),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
