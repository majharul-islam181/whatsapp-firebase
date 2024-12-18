import 'package:flutter/material.dart';
import 'package:whatsapp_firebase/common/theme/dark_theme.dart';
import 'package:whatsapp_firebase/common/theme/light_theme.dart';
import 'package:whatsapp_firebase/feature/welcome/page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Whatsapp',
      // theme: ThemeData.dark(),
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}
