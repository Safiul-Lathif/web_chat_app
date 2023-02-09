import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/fir-203d4.appspot.com/o/WhatsApp%20Image%202022-12-26%20at%205.49.30%20PM.jpeg?alt=media&token=318ae28e-6446-4361-a428-1bc781299323"),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.4), BlendMode.dstATop),
                    image: const NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/fir-203d4.appspot.com/o/WhatsApp%20Image%202022-12-26%20at%205.49.30%20PM.jpeg?alt=media&token=318ae28e-6446-4361-a428-1bc781299323"),
                    fit: BoxFit.cover,
                  )),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    "web.timetoschool.com",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset("assets/qr_code.png"),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.53,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(600.0, 85.0),
                      topRight: Radius.circular(35.0)),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                    image: const NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/fir-203d4.appspot.com/o/WhatsApp%20Image%202022-12-26%20at%205.49.30%20PM.jpeg?alt=media&token=318ae28e-6446-4361-a428-1bc781299323"),
                    fit: BoxFit.cover,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 600,
                    padding: EdgeInsets.only(left: 30, top: 60),
                    child: Column(
                      children: [
                        Text(
                          "Hello there! to enjoy web interface of TimeToSchool Lite, scan the below Scanner from your TimeToSchool APP on your device.",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Note:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Text(
                          " 1. There are more web specfic features avilable for staff and management.",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade800),
                        ),
                        Text(
                          " 2. Session will expire in 2 hours for privacy and security reasons",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade800),
                        ),
                        Text(
                          "3. Each time, you will have to scan the device for security reasons",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/qr.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
