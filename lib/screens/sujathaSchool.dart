// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SujathaSchool extends StatefulWidget {
  const SujathaSchool({super.key});

  @override
  State<SujathaSchool> createState() => _SujathaSchoolState();
}

class _SujathaSchoolState extends State<SujathaSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.fill,
            )),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                      height: 40,
                      width: 40,
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/3197/3197750.png")),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const <Widget>[
                      SizedBox(height: 10),
                      Text(
                        "Sujatha International School",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 5, top: 10, bottom: 7),
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade700,
                        border: Border.all(
                          color: Colors.pink.shade100,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      "Communication",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 18),
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Image(
                    height: 40,
                    width: 40,
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/1077/1077909.png")),
                const SizedBox(
                  width: 60,
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    width: 320,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown,
                        ),
                        gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade100,
                              Colors.white,
                              Colors.white,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          color: Colors.blue.shade100,
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          child: Column(
                            children: const [
                              Image(
                                  height: 40,
                                  width: 40,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/978/978012.png")),
                              Text("Main Groups")
                            ],
                          ),
                        ),
                        Column(
                          children: const [
                            Image(
                                height: 40,
                                width: 40,
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/8112/8112926.png")),
                            Text("Classes")
                          ],
                        ),
                        Column(
                          children: const [
                            Image(
                                height: 40,
                                width: 40,
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/8246/8246876.png")),
                            Text("Indiveduals")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 62,
                    left: 50,
                    child: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.blue.shade900,
                      size: 30,
                    )),
              ],
            ),
            SizedBox(
              height: 550,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              width: 340,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.pink.shade50,
                                  border: Border.all(
                                    color: Colors.pink,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: const Text(
                                " This group contains all teaching staffs and non-teaching stafs",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.brown),
                              )),
                        ),
                        Center(
                          child: Positioned(
                            child: Container(
                                width: 270,
                                padding: const EdgeInsets.only(
                                    left: 40, right: 0, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.pink.shade300,
                                    Colors.pink.shade100
                                  ]),
                                  border: Border.all(
                                    color: Colors.pink.shade300,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(16)),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: const Text(
                                  " School internal  Communication",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              width: 340,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  border: Border.all(
                                    color: Colors.green,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: const Text(
                                " This group only contains management users",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.brown),
                              )),
                        ),
                        Center(
                          child: Positioned(
                            child: Container(
                                width: 260,
                                padding: const EdgeInsets.only(
                                    left: 69, right: 25, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.green.shade400,
                                      Colors.green.shade100
                                    ]),
                                    border: Border.all(
                                      color: Colors.green.shade400,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: const Text(
                                  " Management Only",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              width: 340,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange.shade50,
                                  border: Border.all(
                                    color: Colors.orange,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: const Text(
                                " This group contains only  teaching stafs",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.brown),
                              )),
                        ),
                        Center(
                          child: Positioned(
                            child: Container(
                                width: 260,
                                padding: const EdgeInsets.only(
                                    left: 69, right: 25, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.orange.shade400,
                                      Colors.orange.shade100
                                    ]),
                                    border: Border.all(
                                      color: Colors.orange.shade400,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: const Text(
                                  " Academic Staffs",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              width: 340,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: const Text(
                                " A Custamaized group created by you ",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.brown),
                              )),
                        ),
                        Center(
                          child: Positioned(
                            child: Container(
                                width: 260,
                                padding: const EdgeInsets.only(
                                    left: 69, right: 25, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.blue.shade400,
                                      Colors.blue.shade100
                                    ]),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    border: Border.all(
                                      color: Colors.blue.shade300,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: const Text(
                                  "Transport admins",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              width: 340,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.red.shade50,
                                  border: Border.all(
                                    color: Colors.red,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: const Text(
                                " Create your own customaized group",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.brown,
                                ),
                              )),
                        ),
                        Center(
                          child: Positioned(
                            child: Container(
                                width: 250,
                                padding: const EdgeInsets.only(
                                    left: 80, right: 25, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.red.shade400,
                                      Colors.red.shade100
                                    ]),
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: const Text(
                                  "Customized",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
