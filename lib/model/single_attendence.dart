class SingleAttendanceList {
  final String className;
  final String noOfPresent;
  final String noOfAbsent;
  final String noOfLeave;
  final String precentageOfPresent;
  final String precentageOfAbsent;
  final String precentageOfLeave;

  SingleAttendanceList({
    required this.className,
    required this.noOfPresent,
    required this.noOfAbsent,
    required this.noOfLeave,
    required this.precentageOfPresent,
    required this.precentageOfAbsent,
    required this.precentageOfLeave,
  });

  static SingleAttendanceList fromJson(json) => SingleAttendanceList(
        className: json['className'],
        noOfPresent: json['noOfPresent'],
        noOfAbsent: json['noOfAbsent'],
        noOfLeave: json['noOfLeave'],
        precentageOfPresent: json['precentageOfPresent'],
        precentageOfAbsent: json['precentageOfAbsent'],
        precentageOfLeave: json['precentageOfLeave'],
      );
}

List<SingleAttendanceList> getSingleAttendanceList() {
  const listOfAttendance = [
    {
      "className": "1-A",
      "noOfPresent": "22",
      "noOfAbsent": "2",
      "noOfLeave": "1",
      "precentageOfPresent": "97.1%",
      "precentageOfAbsent": "1.2%",
      "precentageOfLeave": "1.75%"
    },
    {
      "className": "1-B",
      "noOfPresent": "15",
      "noOfAbsent": "3",
      "noOfLeave": "1",
      "precentageOfPresent": "96.1%",
      "precentageOfAbsent": "2.2%",
      "precentageOfLeave": "1.15%"
    },
    {
      "className": "2-A",
      "noOfPresent": "0",
      "noOfAbsent": "0",
      "noOfLeave": "0",
      "precentageOfPresent": "-",
      "precentageOfAbsent": "-",
      "precentageOfLeave": "-"
    },
    {
      "className": "2-B",
      "noOfPresent": "20",
      "noOfAbsent": "5",
      "noOfLeave": "1",
      "precentageOfPresent": "95.1%",
      "precentageOfAbsent": "1.2%",
      "precentageOfLeave": "2.75%"
    },
    {
      "className": "3",
      "noOfPresent": "42",
      "noOfAbsent": "8",
      "noOfLeave": "6",
      "precentageOfPresent": "90.1%",
      "precentageOfAbsent": "3.2%",
      "precentageOfLeave": "5.75%"
    },
    {
      "className": "4-B",
      "noOfPresent": "16",
      "noOfAbsent": "9",
      "noOfLeave": "0",
      "precentageOfPresent": "93.1%",
      "precentageOfAbsent": "6.9%",
      "precentageOfLeave": "-"
    },
    {
      "className": "5-A",
      "noOfPresent": "12",
      "noOfAbsent": "9",
      "noOfLeave": "8",
      "precentageOfPresent": "93.1%",
      "precentageOfAbsent": "2.2%",
      "precentageOfLeave": "5.75%"
    },
    {
      "className": "5-B",
      "noOfPresent": "12",
      "noOfAbsent": "2",
      "noOfLeave": "7",
      "precentageOfPresent": "91.1%",
      "precentageOfAbsent": "1.2%",
      "precentageOfLeave": "3.75%"
    },
    {
      "className": "6",
      "noOfPresent": "42",
      "noOfAbsent": "12",
      "noOfLeave": "0",
      "precentageOfPresent": "94%",
      "precentageOfAbsent": "96%",
      "precentageOfLeave": "-"
    },
  ];

  return listOfAttendance
      .map<SingleAttendanceList>(SingleAttendanceList.fromJson)
      .toList();
}
