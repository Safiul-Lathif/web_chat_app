// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui/model/communication.dart';

class Communicstion2 extends StatefulWidget {
  const Communicstion2({super.key});

  @override
  State<Communicstion2> createState() => _Communicstion2State();
}

class _Communicstion2State extends State<Communicstion2> {
  List<CommunicationListModel> list = getAllTheList();
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
                            color: Colors.green.shade100,
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
                                Colors.white,
                                Colors.white,
                                Colors.blue.shade100
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.centerRight),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Image(
                                  height: 30,
                                  width: 30,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/978/978012.png")),
                              Text("Main Groups")
                            ],
                          ),
                          Column(
                            children: const [
                              Image(
                                  height: 30,
                                  width: 30,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/8112/8112926.png")),
                              Text("Classes")
                            ],
                          ),
                          Container(
                            color: Colors.blue.shade100,
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10),
                            child: Column(
                              children: [
                                const Image(
                                    height: 30,
                                    width: 30,
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/8246/8246876.png")),
                                Text(
                                  "Individuals",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade900),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 52,
                      right: 50,
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
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(),
                                        Text(
                                          list[index].role,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.brown),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              list[index].subject,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  letterSpacing: 1),
                                            ),
                                            Text(list[index].reads,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    letterSpacing: 1))
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: list[index].bgColor,
                                    child: Image.network(
                                      list[index].icons,
                                      width: 30,
                                      height: 30,
                                      color: list[index].color,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Positioned(
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
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
