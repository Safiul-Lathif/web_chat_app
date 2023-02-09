import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:ui/pages/comunication.dart';
import 'package:ui/pages/home.dart';

class Hiii extends StatefulWidget {
  Hiii({
    super.key,
  });

  @override
  State<Hiii> createState() => _HiiiState();
}

class _HiiiState extends State<Hiii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passed data"),
      ),
      body: Center(
          child: Row(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Communication(
                name: "",
                teacher: "",
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: HomePage(),
          )
        ],
      )),
    );
  }
}
