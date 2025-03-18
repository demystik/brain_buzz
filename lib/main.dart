import 'package:brain_buzz/screens/homepage.dart';
import 'package:brain_buzz/screens/quiz_page.dart';
import 'package:brain_buzz/screens/result_page.dart';
import 'package:brain_buzz/screens/test_page.dart';
import 'package:brain_buzz/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const TestPage(),
      initialRoute: '/',
      routes: {
        '/' : (context) => const WelcomeScreen(),
        '/homepage' : (context) => const HomePage(),
        '/quizpage' : (context) => const QuizPage(),
        '/resultpage' : (context) => const ResultPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


