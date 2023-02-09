// ignore_for_file: file_names, non_constant_identifier_names, duplicate_ignore

import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:ui/model/mesage_model.dart';

import '../urtiles_file.dart';

class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({super.key});

  @override
  State<NewsFeedPage> createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  final List<IconData> icons = const [
    Icons.message,
    Icons.call,
    Icons.mail,
    Icons.notifications,
    Icons.settings,
  ];
  List<MessageModel> list = getList();
  // final List<MessageModel> _list = getPendingList();

  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: DraggableBottomSheet(
            minExtent: 150,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: _previewWidget(),
            expandedWidget: _expandedWidget(),
            backgroundWidget: _backgroundWidget(),
            maxExtent: MediaQuery.of(context).size.height * 0.45,
            onDragging: (pos) {},
          ),
        );
      }),
    );
  }

  Widget _previewWidget() {
    double baseWidth = 13000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Positioned(
          child: SizedBox(
            width: 528 * fem,
            height: 167 * fem,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0, -1),
                      end: Alignment(-0, 0.333),
                      colors: <Color>[Color(0x00eff5ff), Color(0xffd9e7ff)],
                      stops: <double>[0, 0.706],
                    ),
                  ),
                ),
                Positioned(
                  // group79LbU (7:2394)
                  left: 190 * fem,
                  top: 97 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 22 * fem,
                      height: 22 * fem,
                      child: Image.asset(
                        'assets/group-79.png',
                        width: 22 * fem,
                        height: 22 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group78DQN (7:2401)
                  left: 75 * fem,
                  top: 97 * fem,
                  child: SizedBox(
                    width: 268 * fem,
                    height: 67 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle33EqG (7:2403)
                          left: 8 * fem,
                          top: 15 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 245 * fem,
                              height: 36 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13 * fem),
                                  color: const Color(0xffa3d371),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle32ugW (7:2404)
                          left: 8 * fem,
                          top: 33 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 245 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff81ba49),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(13 * fem),
                                    bottomLeft: Radius.circular(13 * fem),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // initiatecommunicationnkJ (7:2405)
                          left: 44 * fem,
                          top: 23 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 180 * fem,
                              height: 20 * fem,
                              child: Text(
                                'Initiate Communication',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff505050),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _expandedWidget() {
    double baseWidth = 13000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.fill,
            )),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const Icon(Icons.keyboard_arrow_down),
            Positioned(
              left: 13 * fem,
              top: 6444 * fem,
              child: SizedBox(
                width: 386 * fem,
                height: 301 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // group2KFY (7:1622)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupvwvqeYi (Byw2GrgCKHu3wauputVWVQ)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 220.5 * fem, 7 * fem),
                            width: double.infinity,
                            height: 33 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group38wXp (7:1664)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                  width: 25 * fem,
                                  height: 24 * fem,
                                  child: Image.asset(
                                    'assets/group-38-ZQv.png',
                                    width: 25 * fem,
                                    height: 24 * fem,
                                  ),
                                ),
                                Container(
                                  // group18dfY (7:1623)
                                  width: 105.5 * fem,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/rectangle-7-55t.png',
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Everyone',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group21HVC (7:1627)
                            width: double.infinity,
                            height: 261 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle3PYE (7:1628)
                                  left: 0 * fem,
                                  top: -2 * fem,
                                  right: 0 * fem,
                                  bottom: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 385.5 * fem,
                                      height: 261 * fem,
                                      child: Image.asset(
                                        'assets/rectangle-3-HNa.png',
                                        width: 389.5 * fem,
                                        height: 261 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // thismessagewillbevisiblefor10u (7:1629)
                                  left: 21 * fem,
                                  top: 16 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 301 * fem,
                                      height: 30 * fem,
                                      child: Text(
                                        '"This message will be visible for 10 users"',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.915227294 * ffem / fem,
                                          letterSpacing: 1.6 * fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group45RdL (7:1631)
                                  left: 19 * fem,
                                  top: 65 * fem,
                                  child: Container(
                                    width: 359 * fem,
                                    height: 33 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // autogroupdwne7m4 (Byw2v1GxsxHWZiWLeZdWnE)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 15 * fem, 0 * fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // vector5strokedUW (7:1645)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    1 * fem,
                                                    4 * fem),
                                                width: 18 * fem,
                                                height: 18 * fem,
                                                child: Image.asset(
                                                  'assets/vector-5-stroke-xL2.png',
                                                  width: 18 * fem,
                                                  height: 18 * fem,
                                                ),
                                              ),
                                              Text(
                                                // textK6S (7:1632)
                                                'Text',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color:
                                                      const Color(0xff2c5ec0),
                                                  decorationColor:
                                                      const Color(0xff2c5ec0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // line1551zr (7:1637)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 15 * fem, 0 * fem),
                                          width: 1 * fem,
                                          height: 23 * fem,
                                        ),
                                        Container(
                                          // autogroupfq6vwdc (Byw36qJFmcGFhPPkfJFQ6v)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // image76Gvn (7:1641)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    10 * fem),
                                                width: 12 * fem,
                                                height: 12 * fem,
                                                child: Image.asset(
                                                  'assets/image-76-9a2.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                // documentyaJ (7:1633)
                                                'Document',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  color:
                                                      const Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // autogroupfkfpthG (Byw3tJzUiAAyeoWtiPFKFp)
                                          padding: EdgeInsets.fromLTRB(15 * fem,
                                              1 * fem, 15 * fem, 0 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // line156BwG (7:1638)
                                                width: 1 * fem,
                                                height: 23 * fem,
                                              ),
                                              SizedBox(
                                                width: 15 * fem,
                                              ),
                                              Container(
                                                // autogroupfhaiiAW (Byw3J5UX5ZKQo81JHkfHAi)
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // image77SMQ (7:1642)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              1 * fem,
                                                              9 * fem),
                                                      width: 12 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/image-77-Mfg.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Text(
                                                      // imagejbQ (7:1634)
                                                      'Image',
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 0.9152272542 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing:
                                                            1.2 * fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15 * fem,
                                              ),
                                              Container(
                                                // line157SEv (7:1639)
                                                width: 1 * fem,
                                                height: 23 * fem,
                                              ),
                                              SizedBox(
                                                width: 15 * fem,
                                              ),
                                              Container(
                                                // autogroup3ztvkmQ (Byw3UaB2qNqRZ97QcK3Ztv)
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // image78g9G (7:1644)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              9 * fem),
                                                      width: 12 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/image-78-LEe.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Text(
                                                      // materialBLv (7:1635)
                                                      'Material',
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 0.9152272542 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing:
                                                            1.2 * fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15 * fem,
                                              ),
                                              Container(
                                                // line1584fc (7:1640)
                                                width: 1 * fem,
                                                height: 23 * fem,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // autogroupcg2eCWv (Byw3ejYmTMthwWSDEhCG2e)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // image79ikA (7:1643)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    1 * fem,
                                                    10 * fem),
                                                width: 12 * fem,
                                                height: 12 * fem,
                                                child: Image.asset(
                                                  'assets/image-79-RTQ.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                // audio2F4 (7:1636)
                                                'Audio',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  color:
                                                      const Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // visibletojvA (7:1646)
                                  left: 21 * fem,
                                  top: 218 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 78 * fem,
                                      height: 11 * fem,
                                      child: Text(
                                        'Visible to.. ',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.9152272542 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff303030),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group51bhU (7:1647)
                                  left: 18 * fem,
                                  top: 121 * fem,
                                  child: Container(
                                    width: 358 * fem,
                                    height: 103 * fem,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // autogroupe522J66 (Byw4cCxLSydM6TzW55E522)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 5 * fem),
                                          width: double.infinity,
                                          height: 82 * fem,
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: Positioned(
                                                  // typeyourtexthereChG (7:1648)
                                                  left: 7 * fem,
                                                  top: 8 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 143 * fem,
                                                      height: 11 * fem,
                                                      child: Text(
                                                        'Type your text here..',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0.9152272542 *
                                                              ffem /
                                                              fem,
                                                          letterSpacing:
                                                              1.2 * fem,
                                                          color: const Color(
                                                              0xff797979),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // rectangle21epA (7:1649)
                                                left: 0 * fem,
                                                top: 0 * fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 350 * fem,
                                                    height: 82 * fem,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    7 * fem),
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff9f9f9f)),
                                                      ),
                                                      child: const TextField(
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Container(
                                            // group508zE (7:1650)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 2 * fem, 0 * fem),
                                            width: 45 * fem,
                                            height: 16 * fem,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff2c5ec0),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      3 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      const Color(0x93000000),
                                                  offset:
                                                      Offset(-1 * fem, 1 * fem),
                                                  blurRadius: 2 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Send',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group49LKc (7:1653)
                                  left: 18 * fem,
                                  top: 236 * fem,
                                  child: Container(
                                    width: 275 * fem,
                                    height: 12 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group46cnv (7:1654)
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2 * fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // autogroupwhtnLyp (Byw4twySVDHZMSzadSWHtn)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    8 * fem,
                                                    0 * fem),
                                                width: 12 * fem,
                                                height: 12 * fem,
                                                child: Image.asset(
                                                  'assets/auto-group-whtn.png',
                                                  width: 12 * fem,
                                                  height: 12 * fem,
                                                ),
                                              ),
                                              Text(
                                                // everyonecAe (7:1655)
                                                'Everyone',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  color:
                                                      const Color(0xfff98a1d),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 19 * fem,
                                        ),
                                        Container(
                                          // group47Hna (7:1657)
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2 * fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // rectangle23DAS (7:1659)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    8 * fem,
                                                    0 * fem),
                                                width: 12 * fem,
                                                height: 12 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2 * fem),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xff8e8e8e)),
                                                ),
                                              ),
                                              Text(
                                                // teachersW9Y (7:1658)
                                                'Teachers',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  color:
                                                      const Color(0xff8e8e8e),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 19 * fem,
                                        ),
                                        Container(
                                          // group48nsk (7:1660)
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2 * fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // rectangle23iFc (7:1662)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    8 * fem,
                                                    0 * fem),
                                                width: 12 * fem,
                                                height: 12 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2 * fem),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xff8e8e8e)),
                                                ),
                                              ),
                                              Text(
                                                // parentsRA2 (7:1661)
                                                'Parents',
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      0.9152272542 * ffem / fem,
                                                  letterSpacing: 1.2 * fem,
                                                  color:
                                                      const Color(0xff8e8e8e),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ));
  }

  Widget _backgroundWidget() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LkG - A',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.black,
        ),
        flexibleSpace: const Image(
          image: NetworkImage(
              "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
          fit: BoxFit.fill,
        ),
        backgroundColor: Colors.transparent,
      ),
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
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 60, right: 20, top: 30, bottom: 30),
                    child: GestureDetector(
                      onTap: () {
                        ShowDialog(context, list);
                      },
                      child: Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 5, top: 10, bottom: 7),
                          decoration: BoxDecoration(
                              //  color: Colors.green.shade50,
                              border: Border.all(
                                color: Colors.green.shade100,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(1),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: const Text(
                            " Madem I will make note of this message and will get in touch with you during parent teachhers meeting ",
                            style: TextStyle(color: Colors.brown),
                          )),
                    ),
                  ),
                  Positioned(
                    right: 17,
                    bottom: 100,
                    child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                            left: 10, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            border: Border.all(
                              color: Colors.green.shade100,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          " Ashwin Class teacher iV-A",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ),
                  const Positioned(
                      top: 100,
                      right: 30,
                      child: Text(
                        "Visible only to praveena",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff666666)),
                      ))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 150, top: 30, bottom: 30),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 5, top: 10, bottom: 7),
                        decoration: BoxDecoration(
                            //  color: Colors.pink.shade50,
                            border: Border.all(
                              color: Colors.pink.shade100,
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Row(
                          children: const [
                            Image(
                                height: 30,
                                width: 30,
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/467/467857.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "IMAGE",
                              style: TextStyle(
                                  fontSize: 20,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        )),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 80,
                    child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                            left: 10, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            border: Border.all(
                              color: Colors.pink.shade100,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          " Praveena M/O Aishwrya",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ),
                  const Positioned(
                      top: 85,
                      left: 30,
                      child: Text(
                        "Deleted by Aswin , class teacher",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff666666)),
                      ))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 60, right: 20, top: 30, bottom: 30),
                    child: GestureDetector(
                      onTap: () {
                        // ShowDialogInprogress(context, _list);
                      },
                      child: Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 5, top: 10, bottom: 7),
                          decoration: BoxDecoration(
                              // color: Colors.green.shade50,
                              border: Border.all(
                                color: Colors.green.shade100,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(1),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: const Text(
                            " Madem, this image is not aplicable for our school and accamadic of the children , thus i am deleting your post",
                            style: TextStyle(color: Colors.brown),
                          )),
                    ),
                  ),
                  Positioned(
                    right: 17,
                    bottom: 100,
                    child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                            left: 10, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            border: Border.all(
                              color: Colors.green.shade100,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          " Ashwin Class teacher iV-A",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ),
                  const Positioned(
                      top: 100,
                      right: 30,
                      child: Text(
                        "Visible only to praveena",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff666666)),
                      ))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 80, top: 30, bottom: 30),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 0, right: 5, top: 10, bottom: 7),
                        decoration: BoxDecoration(
                            // color: Colors.pink.shade50,
                            border: Border.all(
                              color: Colors.pink.shade100,
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Column(
                          children: [
                            const Image(
                                height: 150,
                                width: 243,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/182472346/photo/modern-high-school-entrance.jpg?s=612x612&w=0&k=20&c=P0dKl3uhbaWuHzuL5yI9pKb2Kgug9OBX8HYUfAVSjR0=")),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                    height: 30,
                                    width: 30,
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/5968/5968746.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: Text(
                                    "A click of the school from entrance which shows the new board of the school ",
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 250,
                    child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                            left: 10, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            border: Border.all(
                              color: Colors.pink.shade100,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          " Praveena M/O Aishwrya",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ),
                  const Positioned(
                      top: 250,
                      left: 30,
                      child: Text(
                        "Accepted by aswin , class teacher",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff666666)),
                      ))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 60, right: 20, top: 30, bottom: 30),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 5, top: 10, bottom: 7),
                        decoration: BoxDecoration(
                            //  color: Colors.green.shade50,
                            border: Border.all(
                              color: Colors.green.shade100,
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(1),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Text(
                          " Madem I will make note of this message and will get in touch with you during parent teachhers meeting ",
                          style: TextStyle(color: Colors.brown),
                        )),
                  ),
                  Positioned(
                    right: 17,
                    bottom: 100,
                    child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                            left: 10, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            border: Border.all(
                              color: Colors.green.shade100,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          " Ashwin Class teacher iV-A",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ),
                  const Positioned(
                      top: 100,
                      right: 30,
                      child: Text(
                        "Visible only to praveena",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff666666)),
                      ))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 90, top: 30, bottom: 30),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 5, top: 10, bottom: 7),
                        decoration: BoxDecoration(
                            //  color: Colors.pink.shade50,
                            border: Border.all(
                              color: Colors.pink.shade100,
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(1),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: IconButton(
                                icon: Icon(
                                    isPlaying ? Icons.pause : Icons.play_arrow),
                                //iconSize: 50,
                                onPressed: () async {
                                  if (isPlaying) {
                                    // await audioPlayer.pause();
                                  } else {
                                    // Source url =
                                    //     'https://mp3teluguwap.net/mp3/2022/Ponniyan%20Selvan/Ponniyan%20Selvan%20(2022)/Ratchasa%20Maamaney.mp3'
                                    //         as Source;
                                    // print(url);
                                    // await audioPlayer.play(
                                    //   );
                                  }
                                },
                              ),
                            ),
                            Slider(
                                min: 0,
                                max: duration.inSeconds.toDouble(),
                                value: position.inSeconds.toDouble(),
                                onChanged: (value) async {}),
                          ],
                        )),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 100,
                    child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                            left: 10, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            border: Border.all(
                              color: Colors.pink.shade100,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          " Praveena M/O Aishwrya",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ),
                  const Positioned(
                      top: 98,
                      left: 30,
                      child: Text(
                        "Listened the audio ",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff666666)),
                      ))
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type a text here to send ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ShowDialogInprogress(contex, List<MessageModel> list) async {
  return showDialog(
      context: (contex),
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
                          // ignore: prefer_const_constructors
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: const Text(
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

// ignore: non_constant_identifier_names
ShowDialog(contex, List<MessageModel> list) {
  return showDialog(
      context: (contex),
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
                      height: MediaQuery.of(context).size.height * 0.36,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 179, 204, 245),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        boxShadow: [
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
                                      Colors.blueAccent.shade200,
                                      Colors.blueAccent.shade100
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.centerRight)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                      "https://cdn-icons-png.flaticon.com/512/709/709605.png",
                                      color: Colors.white,
                                      width: 30,
                                      height: 30)
                                ],
                              ),
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
                              })
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.87,
                  bottom: MediaQuery.of(context).size.height * 0.63,
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
