// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui/pages/single_school_attendence.dart';
import '../model/campus_model.dart';

class CampusPage extends StatefulWidget {
  const CampusPage({super.key});

  @override
  State<CampusPage> createState() => _CampusPageState();
}

class _CampusPageState extends State<CampusPage> {
  List<CampusModel> list = getList();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat().add_jm().format(now);
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Color(0xffcccccc),
          size: 30,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
            child: Text(
              formattedDate,
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
        title: Row(
          children: [
            Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.grey.shade500,
              size: 40,
            ),
            Text(
              "Tue, 20 Dec,2022",
              style: TextStyle(
                  color: Colors.blue.shade600,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.grey.shade500,
              size: 40,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(-2 * fem, 2 * fem),
                    blurRadius: 3 * fem,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                  image: const NetworkImage(
                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.blue,
                      size: 26,
                    ),
                    Text(
                      "Campuses",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Today's Attendance",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Row(
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
                            width: 60,
                            height: 60,
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
                                    fontSize: 50),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                                    fontSize: 18),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "96.1 %",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600),
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
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/rectangle-7-X7G.png"),
                              child: Text(
                                "A",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                                    fontSize: 18),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "2.8%",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600),
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
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/rectangle-7-55t.png"),
                              child: Text(
                                "L",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                                    fontSize: 18),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "0.77%",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    "Attendance onprogress",
                    style: TextStyle(color: Colors.red.shade500, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 480,
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.cover,
            )),
            child: ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleSchoolAttendance(
                                  campusName: list[index].name,
                                  attendanceLeft: list[index].image,
                                  noOfAbsent: list[index].a,
                                  noOfLeave: list[index].l,
                                  noOfPresent: list[index].p,
                                )),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 180, 207, 255),
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.blue.withOpacity(0.3),
                                BlendMode.dstATop),
                            image: const NetworkImage(
                                "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.blueGrey.shade300),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                offset: const Offset(3, 2),
                                blurRadius: 7)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 58,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              topRight: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                              bottomRight:
                                                  Radius.circular(100)),
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
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          if (list[index].image == "")
                                            const Icon(
                                              Icons.arrow_upward,
                                              size: 16,
                                              color: Colors.greenAccent,
                                            ),
                                          if (list[index].p == '0')
                                            Text(
                                              list[index].p,
                                              style: const TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                          if (list[index].p != '0')
                                            Text(
                                              list[index].p,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        list[index].isPresent,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade600),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 43,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              topRight: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                              bottomRight:
                                                  Radius.circular(100)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x3f000000),
                                              offset: Offset(-2 * fem, 2 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                          ],
                                        ),
                                        child: const CircleAvatar(
                                          radius: 17,
                                          backgroundImage: AssetImage(
                                              "assets/rectangle-7-X7G.png"),
                                          child: Text(
                                            "A",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (list[index].image == "")
                                            const Icon(
                                              Icons.arrow_upward,
                                              size: 16,
                                              color: Colors.greenAccent,
                                            ),
                                          if (list[index].a == '0')
                                            Text(
                                              list[index].a,
                                              style: const TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                          if (list[index].a != '0')
                                            Text(
                                              list[index].a,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                          const SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        list[index].isAbsent,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade600),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 43,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              topRight: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                              bottomRight:
                                                  Radius.circular(100)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x3f000000),
                                              offset: Offset(-2 * fem, 2 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                          ],
                                        ),
                                        child: const CircleAvatar(
                                          radius: 17,
                                          backgroundImage: AssetImage(
                                              "assets/rectangle-7-55t.png"),
                                          child: Text(
                                            "L",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (list[index].image == "")
                                            const Icon(
                                              Icons.arrow_upward,
                                              size: 16,
                                              color: Colors.greenAccent,
                                            ),
                                          if (list[index].l == '0')
                                            Text(
                                              list[index].l,
                                              style: const TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                          if (list[index].l != '0')
                                            Text(
                                              list[index].l,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        list[index].isOnDuty,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade600),
                                      )
                                    ],
                                  ),
                                ),
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/758/758645.png",
                                  height: 20,
                                  width: 25,
                                )
                              ],
                            ),
                            if (list[index].image != "")
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    list[index].image,
                                    style: const TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
