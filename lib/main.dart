import 'package:donation/frontend/screens/splash_screen.dart';
import 'package:donation/ticket_widget.dart';
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
      title: 'Donation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Metropolis"
      ),
      home: const SplashScreen(),
    );
  }
}


