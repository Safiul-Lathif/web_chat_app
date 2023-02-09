import 'package:flutter/material.dart';
import 'package:ui/model/newsFeedModel.dart';
import 'package:ui/urtiles_file.dart';

class FirstCard extends StatefulWidget {
  const FirstCard({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;

  @override
  State<FirstCard> createState() => _FirstCardState();
}

class _FirstCardState extends State<FirstCard> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        double baseWidth = 1300;
        double fem = MediaQuery.of(context).size.width / baseWidth;
        double ffem = fem * 0.97;
        return GestureDetector(
          onLongPress: () {},
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(0)),
                        border: Border.all(color: Colors.green),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        gradient: LinearGradient(
                            colors: [
                              Colors.green.shade500,
                              Colors.green.shade300,
                            ],
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // timeFzA (7:845)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 35 * fem, 0 * fem, 33 * fem),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            widget.data.title,
                            // style: SafeGoogleFont(
                            //   'Inter',
                            //   fontSize: 16 * ffem,
                            //   fontWeight: FontWeight.w400,
                            //   height: 1.2125 * ffem / fem,
                            //   color: const Color(0xff620d00),
                            // ),
                            style: TextStyle(color: Colors.brown),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  // visibletowholeclass5Lv (7:844)
                  margin:
                      EdgeInsets.fromLTRB(23 * fem, 0 * fem, 20 * fem, 0 * fem),
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
      });
}
