import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShredPrefs extends StatefulWidget {
  const ShredPrefs({super.key});

  @override
  State<ShredPrefs> createState() => _ShredPrefsState();
}

class _ShredPrefsState extends State<ShredPrefs> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  String name = '';
  String number = '';
  _saveTheData() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      prefs.setStringList('userData', [name, number]);
      prefs.getStringList('userData');
    });
    print(prefs.getStringList('userData'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Wrap(runSpacing: 20, children: [
          SizedBox(
            height: 50,
            child: FormBuilderTextField(
              name: "Name",
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Enter Mobile Name",
                  labelText: "Name"),
              onChanged: (value) {
                setState(() {
                  name = value.toString();
                });
              },
            ),
          ),
          SizedBox(
            height: 50,
            child: FormBuilderTextField(
              name: "Mobile Number",
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Enter Mobile Number",
                  labelText: "Mobile Number"),
              onChanged: (value) {
                setState(() {
                  number = value.toString();
                });
              },
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    _saveTheData();
                  },
                  child: const Text("Save")))
        ]),
      ),
    );
  }
}
