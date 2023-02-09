// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui/model/newsFeedModel.dart';
import 'package:ui/urtiles_file.dart';

class ThirdCard extends StatefulWidget {
  const ThirdCard({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;

  @override
  State<ThirdCard> createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(9),
                        bottomLeft: Radius.circular(9),
                        bottomRight: Radius.circular(9)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    border: Border.all(
                      color: Colors.pink.shade300,
                    ),
                    gradient: LinearGradient(
                        colors: [Colors.pink.shade400, Colors.pink.shade200],
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.teacher,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 2,
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.26,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(20),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image(
                              height: 150,
                              width: 243,
                              image: NetworkImage(widget.data.imagelink)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              const Image(
                                  height: 35,
                                  width: 35,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/5968/5968746.png")),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  widget.data.subtitle,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  // timeFzA (7:845)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 33 * fem),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group22AbL (7:847)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 1 * fem),
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
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
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
                ),
              ],
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(13 * fem, 0 * fem, 130 * fem, 10 * fem),
              child: Text(
                widget.data.visibility,
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
        ),
      ),
    );
  }
}
