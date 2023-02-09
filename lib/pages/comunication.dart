// ignore_for_file: must_be_immutable

import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/communication_model.dart';
import 'package:ui/pages/profie_info.dart';
import 'package:ui/pages/sendMessage.dart';
import 'package:ui/screens/newsFeedInfo.dart';
import 'package:ui/urtiles_file.dart';
import 'package:ui/widget/backround.dart';

import '../model/newsFeedModel.dart';

class Communication extends StatefulWidget {
  Communication({required this.name, required this.teacher, super.key});
  String name;
  String teacher;

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  List<CommunicationList> list = getChatList();
  // Message replyMessage;
  final focusNode = FocusNode();
  List<NewsFeedList> newsFeedInfo = getNews();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: DraggableBottomSheet(
            minExtent: 170,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: _previewWidget(),
            expandedWidget: SendMessage(
              focusNode: focusNode,
            ),
            backgroundWidget: BackGroundWidget(
              name: widget.name,
              teacher: widget.teacher,
            ),
            maxExtent: MediaQuery.of(context).size.height * 0.45,
            onDragging: (pos) {},
          ),
        );
      }),
    );
  }

  Widget _previewWidget() {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Positioned(
          child: Container(
            width: 528 * fem,
            height: 177 * fem,
            child: Stack(
              children: [
                Container(
                    // decoration: const BoxDecoration(
                    //   gradient: LinearGradient(
                    //     begin: Alignment(-0, -1),
                    //     end: Alignment(-0, 0.333),
                    //     colors: <Color>[Color(0x00eff5ff), Color(0xffd9e7ff)],
                    //     stops: <double>[0, 0.706],
                    //   ),
                    // ),
                    ),
                Positioned(
                  // group79LbU (7:2394)
                  left: 190 * fem,
                  top: 124 * fem,
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
                  top: 127 * fem,
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
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
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
                                  bottom: 30,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Align(
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
                                      const SizedBox(
                                        width: 178,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          // group508zE (7:1650)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 3 * fem, 0 * fem),
                                          width: 45 * fem,
                                          height: 26 * fem,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff2c5ec0),
                                            borderRadius:
                                                BorderRadius.circular(3 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x93000000),
                                                offset:
                                                    Offset(-1 * fem, 1 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
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
                                      ),
                                    ],
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
}
