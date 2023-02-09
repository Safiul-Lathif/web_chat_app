import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/pages/profie_info.dart';
import 'package:ui/screens/newsFeedInfo.dart';
import 'package:ui/urtiles_file.dart';

class BackGroundWidget extends StatefulWidget {
  BackGroundWidget({super.key, required this.name, required this.teacher});
  String name;
  String teacher;

  @override
  State<BackGroundWidget> createState() => _BackGroundWidgetState();
}

class _BackGroundWidgetState extends State<BackGroundWidget> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 13000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue.shade50,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                image: const NetworkImage(
                    "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                fit: BoxFit.fill,
              )),
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Column(
            children: [
              Container(
                // group10sSJ (7:1576)
                margin:
                    EdgeInsets.fromLTRB(14 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 402 * fem,
                height: 57 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // bgcardYHY (7:1577)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        width: 402 * fem,
                        height: 57 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: Center(
                          // maskgroupgHG (7:1579)
                          child: SizedBox(
                            width: 402 * fem,
                            height: 57 * fem,
                            child: Image.asset(
                              'assets/mask-group.png',
                              width: 402 * fem,
                              height: 57 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // communicationp26 (7:1582)
                      left: 70 * fem,
                      top: 7 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 212 * fem,
                          height: 22 * fem,
                          child: Text(
                            'Communication',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 0.9152272542 * ffem / fem,
                              letterSpacing: 2.4 * fem,
                              color: const Color(0xff575757),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // prakashtetslkgaCYS (7:1583)
                      left: 70 * fem,
                      top: 32 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 279 * fem,
                          height: 28 * fem,
                          child: Text(
                            "${widget.name.replaceAll('Class Teacher:', '')} tets (${widget.teacher})",
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 0.9152272877 * ffem / fem,
                              letterSpacing: 1 * fem,
                              color: const Color(0xff575757),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group533JA (7:1584)
                      left: 4 * fem,
                      top: 11 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 63 * fem,
                          height: 36 * fem,
                          child: Image.asset(
                            'assets/group-53.png',
                            width: 63 * fem,
                            height: 36 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // userprofilesymbolWhY (7:2383)
                      left: 344.4262695312 * fem,
                      top: 3 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 48.28 * fem,
                          height: 51 * fem,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(_createRoute());
                            },
                            child: Image.asset(
                              'assets/userprofilesymbol.png',
                              width: 48.28 * fem,
                              height: 51 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                // line135xZY (7:1574)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
                width: double.infinity,
                height: 1 * fem,
                color: const Color(0xffcccccc),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: 50,
                  height: 40,
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
                            Colors.amber.shade400,
                            Colors.amber.shade100,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Column(
                    children: const [
                      Text("Dec"),
                      Text(
                        "10",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.73,
                  child: NewsFeedInfo(
                    focusNode: focusNode,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ProfileInfo(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(10.0, 0.0);
        const end = Offset.zero;

        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });
}
