import 'package:flutter/material.dart';
import 'package:ui/model/communication.dart';
import 'package:ui/model/explore_model.dart';
import 'package:ui/urtiles_file.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<CommunicationListModel> stafsList = getAllTheList();
  List<GroupMessage> groupList = getGroupMessage();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    bool isSelect = false;
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const Icon(Icons.more_vert),
            Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.18,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  border: Border.all(color: Colors.grey.shade800)),
              child: Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.create,
              color: Colors.white,
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.grey,
              Colors.transparent
            ])),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 17,
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "GROUPS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: groupList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                              radius: 18.0,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCKq1XnPYYDaUIlwlsvmLPZ-9-rdK28RToA&usqp=CAU'),
                              backgroundColor: Colors.transparent,
                            ),
                            title: Text(groupList[index].category),
                            subtitle: Text(groupList[index].value),
                            selected:
                                groupList[index].category == "Communication"
                                    ? true
                                    : false,
                            selectedColor: Colors.black87,
                            trailing:
                                groupList[index].category != "Communication"
                                    ? Container(
                                        // group7676i (7:821)
                                        padding: EdgeInsets.fromLTRB(
                                            2 * fem, 3 * fem, 1 * fem, 1 * fem),
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff2c5ec0),
                                          borderRadius:
                                              BorderRadius.circular(3 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x93000000),
                                              offset: Offset(-1 * fem, 1 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          'New',
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w300,
                                            height: 0.9152273178 * ffem / fem,
                                            letterSpacing: 1 * fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      )
                                    : const Text(""),
                            onTap: () {
                              setState(() {
                                isSelect = !isSelect;
                              });
                            },
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey.shade300,
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.grey,
                    Colors.transparent
                  ])),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "CLASSES",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 360,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: stafsList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 18.0,
                                      backgroundImage: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCKq1XnPYYDaUIlwlsvmLPZ-9-rdK28RToA&usqp=CAU'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    if (stafsList[index].icons ==
                                        'https://cdn-icons-png.flaticon.com/512/1271/1271359.png')
                                      const Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                            size: 10,
                                          )),
                                    if (stafsList[index].icons !=
                                        'https://cdn-icons-png.flaticon.com/512/1271/1271359.png')
                                      const Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Icon(
                                            Icons.cancel_rounded,
                                            color: Colors.orange,
                                            size: 10,
                                          )),
                                  ],
                                ),
                                title: Text(stafsList[index].name),
                                subtitle: Text(stafsList[index].role),
                              ),
                              Container(
                                height: 1,
                                color: Colors.grey.shade300,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Positioned(
                      right: 1,
                      bottom: 1,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green.shade500,
                        child: const Icon(
                          Icons.chat,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
