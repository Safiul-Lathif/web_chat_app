import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/pages/profie_info.dart';
import 'package:ui/pages/sendMessage.dart';
import 'package:ui/screens/newsFeedInfo.dart';
import 'package:ui/urtiles_file.dart';

class WebChat extends StatefulWidget {
  WebChat({super.key, required this.name, required this.teacher});
  String name;
  String teacher;

  @override
  State<WebChat> createState() => _WebChatState();
}

class _WebChatState extends State<WebChat> {
  final focusNode = FocusNode();
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: DraggableBottomSheet(
            barrierColor: Colors.transparent,
            minExtent: 170,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: _previewWidget(),
            expandedWidget: SendMessage(
              focusNode: focusNode,
            ),
            backgroundWidget: backgroundWidget(),
            maxExtent: MediaQuery.of(context).size.height * 0.45,
            onDragging: (pos) {},
          ),
        );
      }),
    );
  }

  Widget _previewWidget() {
    double baseWidth = 1500;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Positioned(
          child: Container(
            width: 408 * fem,
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

  backgroundWidget() {
    double baseWidth = 1300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.blue.withOpacity(0.4), BlendMode.dstATop),
                image: const NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/fir-203d4.appspot.com/o/WhatsApp%20Image%202022-12-26%20at%205.49.30%20PM.jpeg?alt=media&token=318ae28e-6446-4361-a428-1bc781299323"),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 10, top: 10, bottom: 5, right: 10),
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/group-53.png',
                          width: 53 * fem,
                          height: 26 * fem,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Communication',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 0.9152272542 * ffem / fem,
                                letterSpacing: 2.4 * fem,
                                color: const Color(0xff575757),
                              ),
                            ),
                            Text(
                              "${widget.name.replaceAll('Class Teacher:', '')} tets (${widget.teacher})",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 0.9152272877 * ffem / fem,
                                letterSpacing: 1 * fem,
                                color: const Color(0xff575757),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.of(context).push(_createRoute());
                        //   },
                        //   child: Image.asset(
                        //     'assets/userprofilesymbol.png',
                        //     width: 28.28 * fem,
                        //     height: 36 * fem,
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      children: const [
                        // Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.search),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        // Icon(Icons.menu)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: 40,
                  height: 33,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      gradient: LinearGradient(
                          colors: [
                            Colors.amber.shade400,
                            Colors.amber.shade100,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Column(
                    children: const [
                      Text(
                        "Dec",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "27",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.76,
                  child: NewsFeedInfo(
                    focusNode: focusNode,
                  )),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
