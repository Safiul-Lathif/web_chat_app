import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat().add_jm().format(now);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          formattedDate,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/4264/4264902.png',
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note,
              color: Colors.grey,
            ),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.grey,
            ),
            label: 'Notes',
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Color(0xffcccccc),
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tue, 20 Dec,2022",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Color(0xffcccccc),
                    size: 40,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.lightBlue.shade50,
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                    image: const NetworkImage(
                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                    fit: BoxFit.fill,
                  )),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Colors.blue.shade100,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                          image: const NetworkImage(
                              "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                          fit: BoxFit.fill,
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Time",
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text("Class", style: TextStyle(color: Colors.grey.shade800))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50,
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                    image: const NetworkImage(
                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                    fit: BoxFit.fill,
                  )),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                          image: const NetworkImage(
                              "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                          fit: BoxFit.fill,
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35, bottom: 35),
                        child: SizedBox(
                          width: 40,
                          child: Text(
                            "08:00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.grey.shade700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                          image: const NetworkImage(
                              "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                          fit: BoxFit.fill,
                        )),
                    child: Container(
                      width: 260,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink.shade200),
                        color: Colors.pink.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "8-B",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Science",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/751/751463.png",
                                  height: 20,
                                  width: 20,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Present",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Absent",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Leave",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "00",
                                      style: TextStyle(
                                          color: Colors.white,
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
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 90,
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: SizedBox(
                        width: 40,
                        child: Text(
                          "09:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 40, bottom: 20),
                    child: Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink.shade300),
                          gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade400,
                                Colors.pink.shade400,
                                Colors.pink.shade400,
                                Colors.pink.shade200,
                              ],
                              end: Alignment.centerRight,
                              begin: Alignment.centerLeft)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "A-1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Mathematics - II",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/751/751463.png",
                                  height: 20,
                                  width: 20,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Present",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Absent",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Leave",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "01",
                                      style: TextStyle(
                                          color: Colors.white,
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
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 35),
                      child: SizedBox(
                        width: 40,
                        child: Text(
                          "10:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange.shade300),
                          gradient: LinearGradient(
                              colors: [
                                Colors.orange.shade400,
                                Colors.orange.shade400,
                                Colors.orange.shade400,
                                Colors.orange.shade200,
                              ],
                              end: Alignment.centerRight,
                              begin: Alignment.centerLeft)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "8-C",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Science",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 35,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 35),
                      child: SizedBox(
                        width: 40,
                        child: Text(
                          "11:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red.shade300),
                          gradient: LinearGradient(
                              colors: [
                                Colors.red.shade400,
                                Colors.red.shade400,
                                Colors.red.shade400,
                                Colors.red.shade200,
                              ],
                              end: Alignment.centerRight,
                              begin: Alignment.centerLeft)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "A-1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Chemistry -II",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 35,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 35),
                      child: SizedBox(
                        width: 40,
                        child: Text(
                          "12:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                        image: const NetworkImage(
                            "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                        fit: BoxFit.fill,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple.shade300),
                          gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade400,
                                Colors.purple.shade400,
                                Colors.purple.shade400,
                                Colors.purple.shade200,
                              ],
                              end: Alignment.centerRight,
                              begin: Alignment.centerLeft)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "0-2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Chemistry -I",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 35,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
