// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui/model/sujatha_school.dart';
import 'package:ui/pages/newScreen.dart';

class SujathaSchool2 extends StatefulWidget {
  const SujathaSchool2({super.key});

  @override
  State<SujathaSchool2> createState() => _SujathaSchool2State();
}

class _SujathaSchool2State extends State<SujathaSchool2> {
  List<SujathaSchoolList> list = getAllTheList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 7),
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
              ),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                          ),
                          gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.blue.shade100,
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
                            color: Colors.white,
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
                          Container(
                            color: Colors.blue.shade100,
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10),
                            child: Column(
                              children: const [
                                Image(
                                    height: 40,
                                    width: 40,
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/8112/8112926.png")),
                                Text("Classes")
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10),
                            child: Column(
                              children: const [
                                Image(
                                    height: 40,
                                    width: 40,
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/8246/8246876.png")),
                                Text("Indiveduals")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 62,
                      right: 160,
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.blue.shade900,
                        size: 30,
                      )),
                ],
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 600,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Stack(children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewPage(
                                          title: list[index].name,
                                        )),
                                (Route<dynamic> route) => true,
                              );
                            },
                            child: Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 5, top: 20, bottom: 7),
                                decoration: BoxDecoration(
                                  color: list[index].contentColor,
                                  border: Border.all(
                                    color: list[index].color,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Image(
                                            height: 30,
                                            width: 30,
                                            image: NetworkImage(
                                                "https://cdn-icons-png.flaticon.com/512/538/538899.png")),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          list[index].role,
                                          style: const TextStyle(
                                              color: Colors.brown,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Image(
                                            height: 20,
                                            width: 20,
                                            image: NetworkImage(
                                                "https://cdn-icons-png.flaticon.com/512/686/686308.png")),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          list[index].pending,
                                          style: const TextStyle(
                                            color: Colors.brown,
                                          ),
                                        ),
                                        const Text(
                                          "|  ",
                                          style: TextStyle(
                                              color: Colors.brown,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Image(
                                            height: 20,
                                            width: 20,
                                            image: NetworkImage(
                                                "https://cdn-icons-png.flaticon.com/512/2118/2118198.png")),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          list[index].reads,
                                          style: const TextStyle(
                                            color: Colors.brown,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Center(
                          child: Positioned(
                            child: Container(
                                width: 150,
                                height: 30,
                                padding: const EdgeInsets.only(),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        list[index].nameColor,
                                        list[index].bgColor,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight),
                                  border: Border.all(
                                    color: list[index].nameColor,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    list[index].name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                )),
                          ),
                        ),
                      ]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
