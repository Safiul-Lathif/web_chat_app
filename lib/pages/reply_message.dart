import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ui/model/newsFeedModel.dart';
import 'package:ui/pages/build_reply.dart';

class ReplyMessage extends StatefulWidget {
  ReplyMessage(
      {super.key, required this.focusNode, required this.data, this.itemIndex});
  FocusNode focusNode;
  final NewsFeedList data;
  final int? itemIndex;

  @override
  State<ReplyMessage> createState() => _ReplyMessageState();
}

class _ReplyMessageState extends State<ReplyMessage> {
  bool isReply = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10),
      // margin: EdgeInsets.only(top: 80),

      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.3), BlendMode.dstATop),
            image: const NetworkImage(
                "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
            fit: BoxFit.fill,
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (widget.focusNode.hasFocus) buildReply(),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: SizedBox(
                    height: 47,
                    child: FormBuilderTextField(
                      focusNode: widget.focusNode,
                      name: "Reply",
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.pink),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "",
                          labelText: "Type Your Message....."),
                      onChanged: (newValue) {},
                    ),
                  ),
                ),
                const Expanded(
                    flex: 1,
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.pink,
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ))),
                const Expanded(
                    flex: 1,
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.pink,
                        child: Icon(
                          Icons.send,
                          size: 17,
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildReply() => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(24),
          ),
        ),
        child: Row(
          children: [
            Container(
              color: Colors.green,
              width: 4,
            ),
            const SizedBox(width: 8),
            Expanded(child: buildReplyMessage()),
          ],
        ),
      );

  Widget buildReplyMessage() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.data.teacher,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                  onTap: (() {
                    setState(() {});
                  }),
                  child: const Icon(Icons.close, size: 16))
            ],
          ),
          const SizedBox(height: 8),
          Text(widget.data.title, style: TextStyle(color: Colors.black54)),
        ],
      );
}
