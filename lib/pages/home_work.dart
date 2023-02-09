import 'package:flutter/material.dart';

import '../model/newsFeedModel.dart';
import '../urtiles_file.dart';

class HomeWorkPage extends StatefulWidget {
  const HomeWorkPage({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;
  @override
  State<HomeWorkPage> createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 100,
            height: 26,
            child: Container(
              // width: 155.5 * fem,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
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
                  "KYC Team",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            width: 260,
            height: 32,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    " Home Work for the day ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "02-Aug-2022",
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade700),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Subject :",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Multiple",
                              style: TextStyle(color: Colors.brown),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "New Home Work Available Now !",
                          style: TextStyle(color: Colors.brown),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.white,
                            Color(0xffcccccc),
                            Colors.white
                          ])),
                        ),
                        Row(
                          children: [
                            Text(
                              "Take me to home work section ",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.double,
                                  color: Colors.blueAccent.shade700),
                            ),
                            Icon(
                              Icons.book,
                              size: 15,
                              color: Colors.blueAccent.shade700,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 15,
                            ),
                            Text(
                              "Ask: 20 | ",
                              style: TextStyle(fontSize: 11),
                            ),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15,
                            ),
                            Text(
                              "Watched: 35",
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group22AbL (7:847)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 1 * fem),
                  width: 10 * fem,
                  height: 10 * fem,
                  child: Image.asset(
                    'assets/group-22-MXG.png',
                    width: 10 * fem,
                    height: 10 * fem,
                  ),
                ),
                Container(
                  // amouC (7:846)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    '9:00AM',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 0.9152273178 * ffem / fem,
                      letterSpacing: 1 * fem,
                      color: const Color(0xff717171),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          // visibletowholeclass5Lv (7:844)
          margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 0 * fem),
          child: Text(
            "Visible to whole class",
            style: SafeGoogleFont(
              'Inter',
              fontSize: 12 * ffem,
              fontWeight: FontWeight.w400,
              height: 0.9152272542 * ffem / fem,
              letterSpacing: 1.2 * fem,
              color: const Color(0xff000000),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 100,
            height: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
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
                  "KYC Team",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            width: 300,
            height: 52,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Column(
                  children: const [
                    Text(
                      " A modeification made in  Home Work for the day 02-Aug-2022 ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade700),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Subject :",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Multiple",
                              style: TextStyle(color: Colors.brown),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "New Home Work Available Now !",
                          style: TextStyle(color: Colors.brown),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.white,
                            Color(0xffcccccc),
                            Colors.white
                          ])),
                        ),
                        Row(
                          children: [
                            Text(
                              "Take me to home work section ",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.double,
                                  color: Colors.blueAccent.shade700),
                            ),
                            Icon(
                              Icons.book,
                              size: 15,
                              color: Colors.blueAccent.shade700,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 15,
                            ),
                            Text(
                              "Ask: 20 | ",
                              style: TextStyle(fontSize: 11),
                            ),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15,
                            ),
                            Text(
                              "Watched: 35",
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group22AbL (7:847)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 1 * fem),
                  width: 10 * fem,
                  height: 10 * fem,
                  child: Image.asset(
                    'assets/group-22-MXG.png',
                    width: 10 * fem,
                    height: 10 * fem,
                  ),
                ),
                Container(
                  // amouC (7:846)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    '9:00AM',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 0.9152273178 * ffem / fem,
                      letterSpacing: 1 * fem,
                      color: const Color(0xff717171),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          // visibletowholeclass5Lv (7:844)
          margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 0 * fem),
          child: Text(
            "Visible to whole class",
            style: SafeGoogleFont(
              'Inter',
              fontSize: 12 * ffem,
              fontWeight: FontWeight.w400,
              height: 0.9152272542 * ffem / fem,
              letterSpacing: 1.2 * fem,
              color: const Color(0xff000000),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 100,
            height: 25,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-6-3Ez.png',
                  ),
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
                  "School Admin ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.notification_add,
                color: Colors.redAccent.shade100,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SizedBox(
                  width: 260,
                  height: 18,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/rectangle-6-coU.png',
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: const [
                          Text(
                            "Fee Reminder triggered to parents ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.26,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              " Take me to a Fees section ",
                              style: TextStyle(
                                  color: Colors.red.shade700,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.5),
                            ),
                            Icon(
                              Icons.wallet,
                              color: Colors.red.shade700,
                              size: 17,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Visible to defaulters",
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.9152272542 * ffem / fem,
                                  letterSpacing: 1.2 * fem,
                                  color: const Color(0xff000000),
                                ),
                              )),
                        ),
                        Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.white,
                            Color(0xffcccccc),
                            Colors.white
                          ])),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Applicable : 20 | Action taken : 35 | Payment initiated : 10",
                          style: SafeGoogleFont(
                            'Italic',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 0.9152272542 * ffem / fem,
                            letterSpacing: 1.2 * fem,
                            color: const Color(0xff000000),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group22AbL (7:847)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 1 * fem),
                  width: 10 * fem,
                  height: 10 * fem,
                  child: Image.asset(
                    'assets/group-22-MXG.png',
                    width: 10 * fem,
                    height: 10 * fem,
                  ),
                ),
                Container(
                  // amouC (7:846)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    '9:00AM',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 0.9152273178 * ffem / fem,
                      letterSpacing: 1 * fem,
                      color: const Color(0xff717171),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          // visibletowholeclass5Lv (7:844)
          margin: EdgeInsets.fromLTRB(20 * fem, 5 * fem, 20 * fem, 0 * fem),
          child: Text(
            "Visible to Admin",
            style: SafeGoogleFont(
              'Inter',
              fontSize: 12 * ffem,
              fontWeight: FontWeight.w400,
              height: 0.9152272542 * ffem / fem,
              letterSpacing: 1.2 * fem,
              color: const Color(0xff000000),
            ),
          ),
        ),
        Container(
          // visibletowholeclass5Lv (7:844)
          margin: EdgeInsets.fromLTRB(20 * fem, 5 * fem, 20 * fem, 0 * fem),
          child: Text(
            "Visible to class Teacher",
            style: SafeGoogleFont(
              'Inter',
              fontSize: 12 * ffem,
              fontWeight: FontWeight.w400,
              height: 0.9152272542 * ffem / fem,
              letterSpacing: 1.2 * fem,
              color: const Color(0xff000000),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 100,
            height: 25,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.red.shade900, BlendMode.color),
                  image: AssetImage(
                    'assets/rectangle-6-3Ez.png',
                  ),
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
                  "School Admin ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(-3 * fem, 3 * fem),
                                      blurRadius: 3 * fem,
                                    ),
                                  ],
                                  image: const DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU"))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Then took place in X-A where the students participated an inter school completion and won 2dn place in the event. it was a very proud moment for the school and we wish to this information",
                                textAlign: TextAlign.start,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff620d00),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group22AbL (7:847)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 1 * fem),
                  width: 10 * fem,
                  height: 10 * fem,
                  child: Image.asset(
                    'assets/group-22-MXG.png',
                    width: 10 * fem,
                    height: 10 * fem,
                  ),
                ),
                Container(
                  // amouC (7:846)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    '9:00AM',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 0.9152273178 * ffem / fem,
                      letterSpacing: 1 * fem,
                      color: const Color(0xff717171),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          // visibletowholeclass5Lv (7:844)
          margin: EdgeInsets.fromLTRB(20 * fem, 5 * fem, 20 * fem, 0 * fem),
          child: Text(
            "Visible to class Teacher",
            style: SafeGoogleFont(
              'Inter',
              fontSize: 12 * ffem,
              fontWeight: FontWeight.w400,
              height: 0.9152272542 * ffem / fem,
              letterSpacing: 1.2 * fem,
              color: const Color(0xff000000),
            ),
          ),
        ),
      ],
    );
  }
}
