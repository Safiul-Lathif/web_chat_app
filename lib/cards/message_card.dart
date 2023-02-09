import 'package:flutter/material.dart';

import '../urtiles_file.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      // group2BhU (7:840)
      width: 372 * fem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // autogroupbzdxJn6 (Byv2QmbHDWvJ6djGSubzdx)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
            width: double.infinity,
            height: 79 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogrouprkgeoTx (Byv2XWu3CgkbA5JCDyrKgE)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 11 * fem, 26 * fem, 9 * fem),
                  width: 311 * fem,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/rectangle-3-oVt.png',
                      ),
                    ),
                  ),
                  child: Center(
                    // wewantedtosharewitheveryonetha (7:842)
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 262 * fem,
                        ),
                        child: Text(
                          'We wanted to share with everyone that our child has got first place in Chess competition',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xff620d00),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // timeFzA (7:845)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 33 * fem),
                  height: double.infinity,
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
          ),
          Container(
            // visibletowholeclass5Lv (7:844)
            margin: EdgeInsets.fromLTRB(23 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              'Visible to whole class',
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
    );
  }
}
