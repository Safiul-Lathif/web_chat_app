import 'package:flutter/material.dart';
import 'package:ui/model/newsFeedModel.dart';

import '../urtiles_file.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;
  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 130000;
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
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
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
                              width: MediaQuery.of(context).size.width * 0.12,
                              height: MediaQuery.of(context).size.height * 0.20,
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
                              child: GridView.builder(
                                shrinkWrap: true,
                                itemCount: 9,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
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
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
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
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "View full info",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                decoration: TextDecoration.underline,
                                color: Colors.red,
                              ),
                            ),
                            const Icon(
                              Icons.info_outline,
                              color: Colors.red,
                              size: 20,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.publish,
                              size: 15,
                            ),
                            Text(
                              "Published 3-dec-22  ",
                              style: TextStyle(fontSize: 13),
                            ),
                            Icon(
                              Icons.watch,
                              size: 15,
                            ),
                            Text(
                              "9:00 AM",
                              style: TextStyle(fontSize: 13),
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
                              Icons.thumb_up_outlined,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 0 * fem),
          child: Text(
            "Visible to whole class ",
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
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 100 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7 * fem),
                  gradient: const LinearGradient(
                    begin: Alignment(-0.93, -0.018),
                    end: Alignment(1, -0.018),
                    colors: <Color>[Color(0xff64a78b), Color(0xff69c767)],
                    stops: <double>[0, 1],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(-2 * fem, 2 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.data.teacher,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.data.className,
                      softWrap: true,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 25),
          child: SizedBox(
            width: 170,
            height: 36,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-7-fop.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  " New meeting invite ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
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
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
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
                            SizedBox(
                              width: 100,
                              child: Wrap(
                                runSpacing: 10,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.sell_outlined,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Title",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.category_outlined,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Category",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.supervised_user_circle,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Organizer",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 1,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.white,
                                Color(0xffcccccc),
                                Colors.white
                              ])),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Parent Teachers Meeting",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "General",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "22-Dec-2022",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Mahesh",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
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
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              "View full info",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                decoration: TextDecoration.underline,
                                color: Colors.green,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              size: 20,
                              color: Colors.green,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_outlined,
                              size: 15,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Accepted: 20 | ",
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Watched: 20",
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
          margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 0 * fem),
          child: Text(
            "visible to whole class",
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
