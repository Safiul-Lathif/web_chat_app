// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/cupertino.dart';
import 'package:ui/screens/newsFeedInfo.dart';
import 'package:ui/screens/sujathaSchool2.dart';

class NewPage extends StatefulWidget {
  NewPage({required this.title, super.key});
  String title;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        final isWeb = MediaQuery.of(context).size.width < 700;
        return isWeb
            ? Container()

            // NewsFeedInfo(
            //     title: widget.title,,
            //   )
            : Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: const SujathaSchool2(),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container()
                      //  NewsFeedInfo(
                      //   title: widget.title,
                      // ),
                      )
                ],
              );
      });
}
