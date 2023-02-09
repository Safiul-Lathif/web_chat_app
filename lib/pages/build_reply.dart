import 'package:flutter/material.dart';

class ReplyMessageWidget extends StatelessWidget {
  ReplyMessageWidget({key});

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
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
                  'Safi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                  child: Icon(Icons.close, size: 16), onTap: (() {}))
            ],
          ),
          const SizedBox(height: 8),
          Text("Hello World", style: TextStyle(color: Colors.black54)),
        ],
      );
}
