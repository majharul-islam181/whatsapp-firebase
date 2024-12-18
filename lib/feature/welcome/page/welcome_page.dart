import 'package:flutter/material.dart';
import 'package:whatsapp_firebase/common/utils/app_colors.dart';
import 'package:whatsapp_firebase/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_firebase/feature/welcome/widgets/language_button.dart';
import 'package:whatsapp_firebase/feature/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundDark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: AppColors.greenDark,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  const Text(
                    'Welcome to whatsapp',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const PrivacyAndTerms(),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    onPressed: () {},
                    text: 'AGREE & CONTINUE',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LanguageButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
