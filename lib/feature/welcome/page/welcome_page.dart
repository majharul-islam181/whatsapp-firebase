import 'package:flutter/material.dart';
import 'package:whatsapp_firebase/common/utils/app_colors.dart';
import 'package:whatsapp_firebase/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_firebase/feature/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                  Material(
                    color: const Color(0xFF182229),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashFactory: NoSplash.splashFactory,
                      highlightColor: const Color(0xFF09141A),
                      onTap: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.language,
                              color: AppColors.greenDark,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'English',
                              style: TextStyle(
                                color: AppColors.greenDark,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
