// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.pink.shade600,
          Colors.pink.shade400,
          Colors.pink.shade200
        ], begin: Alignment.topLeft, end: Alignment.centerRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 46,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter Mobile Number to login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: const Color(0xffe7edeb),
                            hintText: "Mobile Number",
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.grey.shade600,
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: const Color(0xffe7edeb),
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.key,
                              color: Colors.grey.shade600,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckboxListTile(
                          value: showPassword,
                          onChanged: (value) {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          title: const Text(
                            "Show Password ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.pink.shade400)),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
