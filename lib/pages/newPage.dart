// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:ui/screens/newsFeedInfo.dart';
import 'package:ui/screens/sujathaSchool2.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        final isWeb = MediaQuery.of(context).size.width < 700;
        return isWeb
            ? const SujathaSchool2()
            : Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: const SujathaSchool2(),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container()

                      //  const NewsFeedInfo(
                      //   title: 'LKG - A',
                      // ),
                      )
                ],
              );
      });
}
