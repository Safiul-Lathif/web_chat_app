// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/pages/new_login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 160,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 300,
                ),
                Text("Parent Application",
                    style: GoogleFonts.shadowsIntoLight(
                        fontSize: 33, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                SpinKitThreeInOut(
                  size: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color:
                              index.isEven ? Colors.pink : Colors.blue.shade800,
                          shape: BoxShape.circle),
                    );
                  },
                ),
                const Text(
                  "Loading..",
                  style: TextStyle(color: Colors.pink),
                )
              ],
            ),
          ],
        ),
        splashIconSize: 800,
        duration: 5000,
        nextScreen: const NewLoginPage(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.bottomToTop);
  }
}
