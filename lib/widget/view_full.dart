import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewFull extends StatefulWidget {
  const ViewFull({super.key});

  @override
  State<ViewFull> createState() => _ViewFullState();
}

class _ViewFullState extends State<ViewFull> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "(View All)",
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
