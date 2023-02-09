import 'package:flutter/material.dart';
import 'package:ui/pages/home.dart';
import 'package:ui/pages/main_web_screen.dart';
import 'package:ui/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 300));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          // LoginPage()
          MainWebScreen(),
    );
  }
}
