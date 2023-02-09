// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:ui/pages/campus_page.dart';
import 'package:ui/pages/explore.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    // var firstStart = Offset(size.width / 5, size.height);
    // //fist point of quadratic bezier curve
    // var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    // //second point of quadratic bezier curve
    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 45);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 50);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 13000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                      image: const NetworkImage(
                          "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                      fit: BoxFit.fill,
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 10, top: 50),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pink.shade200,
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/1271/1271359.png",
                              width: 30,
                              height: 30,
                              color: Colors.pink,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Hello,",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              Text(
                                "Welcome to admin dashboard !",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 2,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.white,
                        Color(0xffcccccc),
                        Colors.white,
                      ])),
                    )
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: BoxDecoration(
                // color: Colors.blue.shade100,
                gradient: LinearGradient(colors: [
                  Colors.blue.shade100,
                  Colors.blue.shade100,
                  Colors.blue.shade50
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                  image: const NetworkImage(
                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 32,
                        width: 27,
                        decoration: BoxDecoration(
                          color: Colors.green.shade500,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(1),
                            topRight: Radius.circular(1),
                            bottomLeft: Radius.circular(1),
                            bottomRight: Radius.circular(1),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "T",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Text(
                        "imeToSchool",
                        style: TextStyle(
                            color: Colors.blueGrey.shade700,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("Number of campuses :",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.grey)),
                    Text("03",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade700))
                  ]),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("Number of Students :",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.grey)),
                    Text("1,567",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade700))
                  ]),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Today's Attendance",
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(),
                        Container(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100)),
                                  gradient: const LinearGradient(
                                    begin: Alignment(-0.93, -0.018),
                                    end: Alignment(1, -0.018),
                                    colors: <Color>[
                                      Color(0xff64a78b),
                                      Color(0xff69c767)
                                    ],
                                    stops: <double>[0, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(-2 * fem, 2 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                                child: const Center(
                                  child: Text(
                                    "P",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 55),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_downward_outlined,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "1480",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade800,
                                        fontSize: 25),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "96.1 %",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade600),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(-2 * fem, 2 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                                child: const CircleAvatar(
                                  radius: 36,
                                  backgroundImage:
                                      AssetImage("assets/rectangle-7-X7G.png"),
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 55),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_upward_rounded,
                                    size: 18,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "14",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade800,
                                        fontSize: 25),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "2.8%",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade600),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(-2 * fem, 2 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                                child: const CircleAvatar(
                                  radius: 36,
                                  backgroundImage:
                                      AssetImage("assets/rectangle-7-55t.png"),
                                  child: Text(
                                    "L",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 55),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.remove,
                                    size: 18,
                                    color: Colors.orangeAccent,
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade800,
                                        fontSize: 25),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "0.77%",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade600),
                              )
                            ],
                          ),
                        ),
                        Container(),
                        Container(),
                      ],
                    ),
                  ),
                  const Text(
                    "Attendance Complected",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CampusPage()),
                      );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 33,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Colors.blue.shade700),
                        child: const Center(
                            child: Text(
                          "Explore",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
