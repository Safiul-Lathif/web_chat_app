// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui/model/single_attendence.dart';

class SingleSchoolAttendance extends StatefulWidget {
  SingleSchoolAttendance(
      {super.key,
      required this.campusName,
      required this.attendanceLeft,
      required this.noOfAbsent,
      required this.noOfLeave,
      required this.noOfPresent});
  String campusName;
  String attendanceLeft;
  String noOfPresent;
  String noOfAbsent;
  String noOfLeave;

  @override
  State<SingleSchoolAttendance> createState() => _SingleSchoolAttendanceState();
}

class _SingleSchoolAttendanceState extends State<SingleSchoolAttendance> {
  List<SingleAttendanceList> listOfSigleSchool = getSingleAttendanceList();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 13000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat().add_jm().format(now);
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
            padding: const EdgeInsets.all(20.0),
            child: Text(
              formattedDate,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
        title: Row(
          children: const [
            Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.blue,
              size: 30,
            ),
            Text(
              "Tue, 20 Dec,2022",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
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
                      const Text(
                        "Campuses",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.blue,
                        size: 26,
                      ),
                      Text(
                        widget.campusName,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
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
                                widget.noOfPresent,
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
                                widget.noOfAbsent,
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
                                widget.noOfLeave,
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
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    widget.attendanceLeft,
                    style: TextStyle(color: Colors.red.shade500, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Class",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(),
                      Container(
                        width: 34,
                        height: 34,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment(-0.93, -0.018),
                            end: Alignment(1, -0.018),
                            colors: <Color>[
                              Color(0xff64a78b),
                              Color(0xff69c767)
                            ],
                            stops: <double>[0, 1],
                          ),
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
                      Container(
                        width: 45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                        ),
                        child: const CircleAvatar(
                          radius: 17,
                          backgroundImage:
                              AssetImage("assets/rectangle-7-X7G.png"),
                          child: Text(
                            "A",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                        ),
                        child: const CircleAvatar(
                          radius: 17,
                          backgroundImage:
                              AssetImage("assets/rectangle-7-55t.png"),
                          child: Text(
                            "L",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Container(
                    height: 2,
                    color: Colors.grey.shade500,
                  ),
                ),
                SizedBox(
                  height: 440,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: listOfSigleSchool.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    listOfSigleSchool[index].className,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(),
                                  SizedBox(
                                    width: 45,
                                    child: Column(
                                      children: [
                                        Text(
                                          listOfSigleSchool[index].noOfPresent,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          listOfSigleSchool[index]
                                              .precentageOfPresent,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.grey.shade700),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 45,
                                    child: Column(
                                      children: [
                                        Text(
                                          listOfSigleSchool[index].noOfAbsent,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          listOfSigleSchool[index]
                                              .precentageOfAbsent,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.grey.shade700),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 45,
                                    child: Column(
                                      children: [
                                        Text(
                                          listOfSigleSchool[index].noOfLeave,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          listOfSigleSchool[index]
                                              .precentageOfLeave,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.grey.shade700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Container(
                                height: 2,
                                color: const Color(0xffcccccc),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
