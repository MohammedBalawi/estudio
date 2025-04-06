import 'package:estudio/screen/login_screen/Login_screen.dart';
import 'package:estudio/screen/page/profie_page/OtherProfileBadgesPage.dart';
import 'package:estudio/screen/quiz_question_page/quiz_image_question_page.dart';
import 'package:estudio/screen/search/search_courses_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6C63FF)),
      ),
      home: const LoginPage(),
    );
  }
}


