// ignore_for_file: implementation_imports, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:ui/model/mesage_model.dart';

class MessageInfo extends StatefulWidget {
  const MessageInfo({super.key});

  @override
  State<MessageInfo> createState() => _MessageInfoState();
}

class _MessageInfoState extends State<MessageInfo> {
  List<MessageModel> list = getPendingList();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

ShowDialog(context, List<MessageModel> list) {
  return showDialog(
      context: (context),
      builder: ((context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.41,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 179, 204, 245),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.blueAccent.shade400,
                                      Colors.blueAccent.shade100,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.centerRight)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/1665/1665646.png",
                                  width: 30,
                                  height: 30,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "Message Info",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      letterSpacing: 2),
                                ),
                                Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/3972/3972676.png",
                                    color: Colors.white,
                                    width: 40,
                                    height: 40)
                              ],
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                return Table(
                                  border: TableBorder.all(
                                    color: Colors.brown.shade400,
                                    //style: BorderStyle.solid,
                                    width: 0.2,
                                  ),
                                  children: [
                                    TableRow(children: [
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          list[index].category,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      )),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          list[index].value,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ))
                                    ]),
                                  ],
                                );
                              }),
                          const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Text(
                              "Waiting for approval",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.87,
                  bottom: MediaQuery.of(context).size.height * 0.65,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        );
      }));
}
