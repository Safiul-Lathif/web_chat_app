// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swipe_to/swipe_to.dart';
import 'package:ui/cards/audio_video_doc.dart';
import 'package:ui/cards/calendar_card.dart';
import 'package:ui/cards/parents_reply_card.dart';
import 'package:ui/cards/paretents_approved.dart';
import 'package:ui/pages/home_work.dart';
import 'package:ui/screens/feed_page.dart';
import 'package:ui/screens/final.dart';
import 'package:ui/screens/firstcard.dart';
import 'package:ui/screens/secondCard.dart';
import 'package:ui/screens/thirdCard.dart';

import '../model/newsFeedModel.dart';

// ignore: must_be_immutable
class NewsFeedInfo extends StatefulWidget {
  const NewsFeedInfo({
    super.key,
    this.title,
    required this.focusNode,
  });
  final String? title;
  final FocusNode focusNode;

  @override
  State<NewsFeedInfo> createState() => _NewsFeedInfoState();
}

class _NewsFeedInfoState extends State<NewsFeedInfo> {
  late final List<TextEditingController> countController;
  List<NewsFeedList> newsFeedInfo = getNews();
  @override
  void initState() {
    super.initState();
    countController =
        List.generate(newsFeedInfo.length, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 3,
        ),
        child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: newsFeedInfo.length,
            itemBuilder: (context, int index) {
              if (newsFeedInfo[index].type == "messageCard") {
                return SwipeTo(
                  onRightSwipe: () {
                    setState(() {
                      widget.focusNode.requestFocus();
                      HapticFeedback.vibrate();
                    });
                  },
                  child: ParentsReplyCard(
                      data: newsFeedInfo[index], itemIndex: index),
                );
              } else if (newsFeedInfo[index].type == 'text') {
                return FirstCard(data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == 'approvedCard') {
                return ParentsApproved(
                    data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == 'no-image') {
                return SecondCard(data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "2ndText") {
                return FirstCard(data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "image") {
                return ThirdCard(data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "textfield") {
                return FeedPage(data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "audioVideo") {
                return AudioVideoDoc(
                    data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "homeWork") {
                return HomeWorkPage(
                    data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "calender") {
                return CalenderCard(
                    data: newsFeedInfo[index], itemIndex: index);
              } else if (newsFeedInfo[index].type == "final") {
                return FinalPage(data: newsFeedInfo[index], itemIndex: index);
              } else {
                return const Text("nothing");
              }
            }),
      ),
    );
  }
}
