import 'package:flutter/material.dart';
import 'package:whatsapp_firebase/common/utils/app_colors.dart';

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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: MediaQuery.of(context).size.width - 100,
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
                      onPressed: () {},
                      child: const Text(' AGREE & CONTINUE'),
                    ),
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

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(height: 1.5),
          children: [
            TextSpan(
              text: 'By continuing, you agree to our ',
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: 'Terms of Service',
              style: TextStyle(color: AppColors.blueDark),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(color: AppColors.blueDark),
            ),
          ],
        ),
      ),
    );
  }
}
