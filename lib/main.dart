import 'package:flutter/material.dart';
import 'package:gt2022/screens/mainDisplay.dart';
import 'package:gt2022/screens/screens.dart';
import 'package:gt2022/screens/Dashboard/addMoney.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const RegistrationScreen(),
        '/phoneVerification': (context) => const PhoneVerificationScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const mainDisplay(),
        '/addMoney': (context) => const addMoney(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}
