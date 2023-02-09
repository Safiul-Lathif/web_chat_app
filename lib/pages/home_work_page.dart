import 'package:flutter/material.dart';
import 'package:ui/model/communication_model.dart';

class PageofHomeWork extends StatefulWidget {
  const PageofHomeWork({super.key});

  @override
  State<PageofHomeWork> createState() => _PageofHomeWorkState();
}

class _PageofHomeWorkState extends State<PageofHomeWork> {
  List<CommunicationList> list = getChatList();

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
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 10),
            child: Container()),
      ),
    );
  }
}
