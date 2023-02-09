import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:ui/widget/classes.dart';
import 'package:ui/widget/individuals.dart';
import 'package:ui/widget/main_groups.dart';

class TheNewPage extends StatefulWidget {
  const TheNewPage({super.key});

  @override
  State<TheNewPage> createState() => _TheNewPageState();
}

class _TheNewPageState extends State<TheNewPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 13000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat().add_jm().format(now);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
                "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
            fit: BoxFit.fill,
          )),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 60, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    ),
                    Text(
                      formattedDate,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1827/1827301.png',
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Color(0xffcccccc),
                  Colors.white,
                ])),
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left_outlined,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Thu, 22 Dec,2022",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.81,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.blue.withOpacity(0.2), BlendMode.dstATop),
                      image: const NetworkImage(
                          "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                      fit: BoxFit.fill,
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.blue.withOpacity(0.2),
                                    BlendMode.dstATop),
                                image: const NetworkImage(
                                    "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                fit: BoxFit.fill,
                              )),
                          width: 90,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Time",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade500),
                                ),
                              ],
                            ),
                          )),
                        ),
                        SizedBox(
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Class",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 90,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.fill,
                                  )),
                              child: Center(
                                child: SizedBox(
                                  width: 40,
                                  child: Text(
                                    "08:00 AM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Colors.grey.shade700),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 240,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green.shade200),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.green.shade100,
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.green.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: const NetworkImage(
                                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(-2 * fem, 2 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "8-B",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Science",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Image.network(
                                          "https://cdn-icons-png.flaticon.com/512/751/751463.png",
                                          height: 20,
                                          width: 20,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Present",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Absent",
                                              style: TextStyle(
                                                color: Colors.grey.shade800,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Leave",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "00",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          left: 80,
                          bottom: 40,
                          child: Container(
                            // group70qmU (7:818)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6 * fem, 0.94 * fem),
                            width: 26 * fem,
                            height: 26 * fem,
                            child: Image.asset(
                              'assets/group-70.png',
                              width: 26 * fem,
                              height: 26 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 90,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.fill,
                                  )),
                              child: Center(
                                child: SizedBox(
                                  width: 40,
                                  child: Text(
                                    "09:00 AM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Colors.grey.shade700),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 240,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple.shade200),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.purple.shade100,
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.purple.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: const NetworkImage(
                                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(-2 * fem, 2 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "A-1",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Mathematics -II",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Image.network(
                                          "https://cdn-icons-png.flaticon.com/512/751/751463.png",
                                          height: 20,
                                          width: 20,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Present",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Absent",
                                              style: TextStyle(
                                                color: Colors.grey.shade800,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Leave",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "00",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 80,
                          bottom: 40,
                          child: Container(
                            // group70qmU (7:818)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6 * fem, 0.94 * fem),
                            width: 26 * fem,
                            height: 26 * fem,
                            child: Image.asset(
                              'assets/group-70.png',
                              width: 26 * fem,
                              height: 26 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 90,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.fill,
                                  )),
                              child: Center(
                                child: SizedBox(
                                  width: 40,
                                  child: Text(
                                    "10:00 AM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Colors.grey.shade700),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 240,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orangeAccent.shade200),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.orangeAccent.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: const NetworkImage(
                                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(-2 * fem, 2 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "8-C",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Science",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.grey.shade800,
                                          size: 35,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          left: 80,
                          bottom: 40,
                          child: Container(
                            // group70qmU (7:818)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6 * fem, 0.94 * fem),
                            width: 26 * fem,
                            height: 26 * fem,
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/5242/5242960.png',
                              width: 26 * fem,
                              height: 26 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 90,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.fill,
                                  )),
                              child: Center(
                                child: SizedBox(
                                  width: 40,
                                  child: Text(
                                    "11:00 AM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Colors.grey.shade700),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 240,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.teal.shade200),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.teal.shade100,
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.orangeAccent.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: const NetworkImage(
                                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(-2 * fem, 2 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "8-C",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Science",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.grey.shade800,
                                          size: 35,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          left: 78,
                          bottom: 40,
                          child: Container(
                            // group70qmU (7:818)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6 * fem, 0.94 * fem),
                            width: 26 * fem,
                            height: 26 * fem,
                            child: Image.asset(
                              'assets/group-71.png',
                              width: 26 * fem,
                              height: 26 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 90,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.fill,
                                  )),
                              child: Center(
                                child: SizedBox(
                                  width: 40,
                                  child: Text(
                                    "12:00 AM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Colors.grey.shade700),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 240,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red.shade200),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.red.shade100,
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.red.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image: const NetworkImage(
                                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(-2 * fem, 2 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "8-C",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Science",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.grey.shade800,
                                          size: 35,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          left: 80,
                          bottom: 40,
                          child: Container(
                            // group70qmU (7:818)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6 * fem, 0.94 * fem),
                            width: 26 * fem,
                            height: 26 * fem,
                            child: Image.asset(
                              'assets/group-70.png',
                              width: 26 * fem,
                              height: 26 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 116,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ],
                        ),
                        Positioned(
                          child: DefaultTabController(
                              length: 3,
                              initialIndex: 0,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 40,
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.brown,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: TabBar(
                                      indicatorColor: Colors.blue.shade100,
                                      indicatorWeight: 1,
                                      labelPadding:
                                          const EdgeInsets.only(top: 10),
                                      labelColor: Colors.blue.shade700,
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      unselectedLabelStyle:
                                          const TextStyle(color: Colors.black),
                                      unselectedLabelColor: Colors.black,
                                      indicator: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10), // Creates border
                                          color: Colors.blue.shade200),
                                      tabs: [
                                        Tab(
                                          child: Column(
                                            children: const [
                                              Image(
                                                  height: 30,
                                                  width: 30,
                                                  image: NetworkImage(
                                                      "https://cdn-icons-png.flaticon.com/512/2693/2693507.png")),
                                              Text(
                                                "Shedule",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        Tab(
                                          child: Column(
                                            children: const [
                                              Image(
                                                  height: 30,
                                                  width: 30,
                                                  image: NetworkImage(
                                                      "https://cdn-icons-png.flaticon.com/512/2602/2602490.png")),
                                              Text(
                                                "Reports",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        Tab(
                                          child: Column(
                                            children: const [
                                              Image(
                                                  height: 30,
                                                  width: 30,
                                                  image: NetworkImage(
                                                      "https://cdn-icons-png.flaticon.com/512/768/768818.png")),
                                              Text(
                                                "Notes",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ])),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
