import 'package:flutter/material.dart';

class NewLoginPage extends StatefulWidget {
  const NewLoginPage({super.key});

  @override
  State<NewLoginPage> createState() => _NewLoginPageState();
}

class _NewLoginPageState extends State<NewLoginPage> {
  bool showPassword = false;
  int? isPassword = 1;
  int? isOTP = 2;
  int? _value = 0;
  bool password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.blue.withOpacity(0.75), BlendMode.dstATop),
          image: const AssetImage("assets/img.jpg"),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                      color: Color(0xffcccccc),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.blueGrey.shade600,
                            hintStyle:
                                const TextStyle(color: Color(0xffcccccc)),
                            hintText: "   Phone Number",
                            contentPadding: const EdgeInsets.all(15),
                            prefixIcon: (Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      topRight: Radius.circular(0),
                                      bottomRight: Radius.circular(0))),
                              child: const Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 20,
                              ),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: isPassword,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                      password = !password;
                                    });
                                  },
                                ),
                                const Text("Password")
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: isOTP,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                      password = false;
                                    });
                                  },
                                ),
                                const Text("OTP")
                              ],
                            )
                          ],
                        ),
                      ),
                      if (password)
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: TextField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.blueGrey.shade600,
                                    hintStyle: const TextStyle(
                                        color: Color(0xffcccccc)),
                                    hintText: "   Password",
                                    contentPadding: const EdgeInsets.all(15),
                                    prefixIcon: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                              topRight: Radius.circular(0),
                                              bottomRight: Radius.circular(0))),
                                      child: const Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    )),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: showPassword,
                                      activeColor: Colors.blueGrey.shade700,
                                      onChanged: (value) {
                                        setState(() {
                                          showPassword = !showPassword;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Show Passsword",
                                      style: TextStyle(
                                          color: Colors.blueGrey.shade700,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Forget Password ?",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade700,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        )
                      else
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: TextField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.blueGrey.shade600,
                                    hintStyle: const TextStyle(
                                        color: Color(0xffcccccc)),
                                    hintText: "   OTP",
                                    contentPadding: const EdgeInsets.all(15),
                                    prefixIcon: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                              topRight: Radius.circular(0),
                                              bottomRight: Radius.circular(0))),
                                      child: const Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text("Enter the OTP send to your number",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade700,
                                    fontSize: 12)),
                            const SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                // elevation: MaterialStateProperty.all(10),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  // side: BorderSide(color: Colors.white)
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.blueGrey.shade600,
                                )),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.26,
                bottom: MediaQuery.of(context).size.height * 0.375,
                height: 120,
                width: 120,
                child: Image.asset(
                  "assets/icon.png",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
