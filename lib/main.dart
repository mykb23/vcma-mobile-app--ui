import 'package:flutter/material.dart';
import 'package:vcmapp/screens/onboarding_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VituralCardManagementApp(),
    ),
  );
}

class VituralCardManagementApp extends StatefulWidget {
  VituralCardManagementApp({Key? key}) : super(key: key);

  @override
  _VituralCardManagementAppState createState() =>
      _VituralCardManagementAppState();
}

class _VituralCardManagementAppState extends State<VituralCardManagementApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreen(),
    );
  }
}
