// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/model/user_attendence.dart';

class HomeWorkNew extends StatefulWidget {
  const HomeWorkNew({super.key});

  @override
  State<HomeWorkNew> createState() => _HomeWorkNewState();
}

class _HomeWorkNewState extends State<HomeWorkNew> {
  List<UserDetailsList> listOfStudents = getList();
  late bool isPresent;
  bool isAbsent = false;
  bool isOnDuty = false;

  @override
  Widget build(BuildContext context) {
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 20, top: 10),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: const [
                    Text(
                      "A-1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mark Attendance",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  width: 90,
                ),
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/17/17704.png",
                  width: 20,
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            height: 1,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.grey, Colors.white])),
          ),
          Card(
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Present",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "Absent",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "OnDuy",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 570,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listOfStudents.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 23.0,
                              backgroundImage:
                                  NetworkImage(listOfStudents[index].image),
                              backgroundColor: Colors.transparent,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 90,
                              child: Text(
                                listOfStudents[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (listOfStudents[index].isPresent == true) {
                              isPresent = !isPresent;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          size: 50,
                          color: listOfStudents[index].isPresent
                              ? Colors.grey.shade100
                              : Color(0xffcccccc),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            // isAbsent = !isAbsent;
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          size: 50,
                          color: listOfStudents[index].isAbsent
                              ? Colors.grey.shade100
                              : Color(0xffcccccc),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            // isOnDuty = !isOnDuty;
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          color: listOfStudents[index].isOnDuty
                              ? Colors.grey.shade100
                              : Color(0xffcccccc),
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
