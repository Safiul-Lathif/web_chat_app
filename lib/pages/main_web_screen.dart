import 'package:flutter/material.dart';
import 'package:ui/pages/info_page.dart';
import 'package:ui/pages/web_page_communication.dart';
import 'package:ui/widget/chat_list.dart';

class MainWebScreen extends StatefulWidget {
  const MainWebScreen({super.key});

  @override
  State<MainWebScreen> createState() => _MainWebScreenState();
}

class _MainWebScreenState extends State<MainWebScreen> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              leading: Column(
                children: const [
                  CircleAvatar(
                    radius: 18.0,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCKq1XnPYYDaUIlwlsvmLPZ-9-rdK28RToA&usqp=CAU'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Aswin ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Colors.white),
                  )
                ],
              ),
              minWidth: 65,
              backgroundColor: Colors.green.shade500,
              labelType: NavigationRailLabelType.all,
              selectedIconTheme:
                  const IconThemeData(color: Colors.white, size: 30),
              selectedLabelTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 14),
              unselectedIconTheme:
                  const IconThemeData(color: Colors.white, size: 20),
              unselectedLabelTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 12),
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.chat_outlined), label: Text("Chat")),
                NavigationRailDestination(
                    icon: Icon(Icons.person_outline), label: Text("Person")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings_outlined),
                    label: Text("Settings")),
                NavigationRailDestination(
                    icon: Icon(Icons.exit_to_app), label: Text("Exit")),
              ],
              selectedIndex: 0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.254,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.4), BlendMode.dstATop),
                    image: const NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/fir-203d4.appspot.com/o/WhatsApp%20Image%202022-12-26%20at%205.49.30%20PM.jpeg?alt=media&token=318ae28e-6446-4361-a428-1bc781299323"),
                    fit: BoxFit.cover,
                  )),
              child: const ChatList(),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.47,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1, color: Colors.grey.shade300),
                  left: BorderSide(width: 1, color: Colors.grey.shade300),
                ),
              ),
              child: WebChat(
                teacher: 'LKG-A',
                name: 'Prakash',
              )),
          Expanded(
            child: Container(
              color: Colors.green.shade400,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.blue.withOpacity(0.4), BlendMode.dstATop),
                      image: const NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/fir-203d4.appspot.com/o/WhatsApp%20Image%202022-12-26%20at%205.49.30%20PM.jpeg?alt=media&token=318ae28e-6446-4361-a428-1bc781299323"),
                      fit: BoxFit.cover,
                    )),
                child: const ProfileInfoWeb(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
