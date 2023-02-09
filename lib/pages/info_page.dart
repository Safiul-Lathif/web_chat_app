import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/model/communication.dart';
import 'package:ui/urtiles_file.dart';
import 'package:ui/widget/view_full.dart';

class ProfileInfoWeb extends StatefulWidget {
  const ProfileInfoWeb({super.key});

  @override
  State<ProfileInfoWeb> createState() => _ProfileInfoWebState();
}

class _ProfileInfoWebState extends State<ProfileInfoWeb> {
  List<CommunicationListModel> stafsList = getAllTheList();
  List<String> activeStatus = [
    "Avilable",
    "Busy",
    "At work",
    "Just be okay",
    "Life is full ..",
    "Hello this is me ",
    "Busy"
  ];
  List<String> img = [
    "https://cdn-icons-png.flaticon.com/128/888/888034.png",
    "https://cdn-icons-png.flaticon.com/512/59/59284.png",
    "https://cdn-icons-png.flaticon.com/128/4176/4176564.png"
  ];
  List<String> name = ["Document", "Audio", "Material"];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.green.shade400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/school-building-road-scene_25030-39841.jpg?w=2000'),
                    backgroundColor: Colors.transparent,
                  ),
                  Text(
                    "Sujatha International School",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "@timeToSchool",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Align(alignment: Alignment.centerRight, child: Icon(Icons.cancel)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 17, right: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${stafsList.length} Members",
                    style: TextStyle(
                        color: Colors.green.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  ViewFull()
                ],
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: stafsList.length,
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
                          title: Text(stafsList[index].name),
                          subtitle: Text(activeStatus[index]),
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
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Picture and Video",
                    style: TextStyle(
                        color: Colors.green.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  ViewFull()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 15,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 7,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          )),
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
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ATTACHMENTS",
                    style: TextStyle(
                        color: Colors.green.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  ViewFull()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 72,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: img.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 7,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(img[index]),
                                    fit: BoxFit.contain),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                )),
                          ),
                          Text(
                            name[index],
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
