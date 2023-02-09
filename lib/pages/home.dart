// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/pages/attendence_page.dart';
import 'package:ui/pages/dragable.dart';
import 'package:ui/pages/explore.dart';
import 'package:ui/pages/hiii.dart';
import 'package:ui/pages/the_new.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sujatha International School"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AttendancePage()),
                  );
                },
                child: const Text("Main Page Attendance")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Explore()),
                  );
                },
                child: const Text("Schedule Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TheNewPage()),
                  );
                },
                child: const Text("new page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DragableWidget()),
                  );
                },
                child: const Text("Main Page  Landing of users ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hiii()),
                  );
                },
                child: const Text("Main Page  Landing of users ")),
          ],
        ),
      ),
    );
  }
}
