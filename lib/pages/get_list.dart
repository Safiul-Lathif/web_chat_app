import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/pages/hiii.dart';

class GetStringList extends StatefulWidget {
  const GetStringList({super.key});

  @override
  State<GetStringList> createState() => _GetStringListState();
}

class _GetStringListState extends State<GetStringList> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<List> userData;

  @override
  void initState() {
    super.initState();
    setState(() {
      userData = _prefs.then((SharedPreferences prefs) {
        return (prefs.getStringList('userData') ?? []);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get Data"),
        ),
        body: FutureBuilder<List>(
            future: userData,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const CircularProgressIndicator();
                default:
                  var userData = snapshot.data!.asMap();
                  return Center(
                      child: Column(
                    children: [
                      Text("${userData[0]}"),
                      Text("${userData[1]}"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Hiii(
                                      //  userData: [userData],
                                      )),
                            );
                          },
                          child: Text("go to  next page"))
                    ],
                  ));
              }
            }));
  }
}
