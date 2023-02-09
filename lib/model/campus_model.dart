class CampusModel {
  final String name;
  final String image;
  final String isPresent;
  final String isAbsent;
  final String isOnDuty;
  final String p;
  final String a;
  final String l;

  CampusModel(
      {required this.name,
      required this.image,
      required this.isAbsent,
      required this.isOnDuty,
      required this.p,
      required this.a,
      required this.l,
      required this.isPresent});

  static CampusModel fromJson(json) => CampusModel(
      name: json['name'],
      image: json['image'],
      isAbsent: json['isAbsent'],
      isOnDuty: json['isOnDuty'],
      p: json['p'],
      a: json['a'],
      l: json['l'],
      isPresent: json['isPresent']);
}

List<CampusModel> getList() {
  const variant = [
    {
      "isAbsent": "1.2%",
      "isPresent": "97.1%",
      "isOnDuty": "1.37%",
      "name": "New York Campus",
      "p": "2050",
      "a": "25",
      "l": "37",
      "image": "Attendance left: 10 Students",
    },
    {
      "isAbsent": "8.2%",
      "isPresent": "90.9%",
      "isOnDuty": "0.37%",
      "name": "London Campus",
      "p": "1980",
      "a": "76",
      "l": "3",
      "image": ""
    },
    {
      "isAbsent": "-",
      "isPresent": "-",
      "isOnDuty": "-",
      "name": "Islamabad Campus",
      "p": "0",
      "a": "0",
      "l": "0",
      "image": "Attendance Left : 0 Students"
    },
    {
      "isAbsent": "5.2%",
      "isPresent": "93.1%",
      "isOnDuty": "2.37%",
      "name": "Los Angeles Campus",
      "p": "2000",
      "a": "20",
      "l": "17",
      "image": "Attendance Left: 10 Students"
    },
    {
      "isAbsent": "5.2%",
      "isPresent": "93.1%",
      "isOnDuty": "1.37%",
      "name": "California Campus",
      "p": "1250",
      "a": "55",
      "l": "65",
      "image": ""
    },
    {
      "isAbsent": "1.2%",
      "isPresent": "97.1%",
      "isOnDuty": "1.37%",
      "name": "Chennai Campus",
      "p": "2650",
      "a": "85",
      "l": "27",
      "image": ""
    },
  ];
  return variant.map<CampusModel>(CampusModel.fromJson).toList();
}

// List<MessageModel> getPendingList() {
//   const variant = [
//     {"category": "Initated by", "value": "Prakash Jaganathan"},
//     {"category": "User Category", "value": "Parent"},
//     {"category": "initated on", "value": "02 November "},
//     {"category": "Approved by", "value": "N/A"},
//     {"category": "User Category", "value": "N/A"},
//     {"category": "Area", "value": "N/A"},
//     {"category": "Approved at ", "value": "N/A  "},
//     {"category": "Deleted by", "value": "N/A"},
//     {"category": "Deleted on", "value": "N/A"},
//     {"category": "initlized on", "value": "N/A"},
//   ];

//   return variant.map<MessageModel>(MessageModel.fromJson).toList();
// }


// class CampusModel {

//   final String schoolName;
//   final String presentNumbers;
//   final String absentNumbers;
//   final String leaveNumbers;
//   final String attendanceLeft;
//   final String presentPercent;
//   final String absentPercent;
//   final String leavePercent;

//   CampusModel({
//     required this.schoolName,
//     required this.presentNumbers,
//     required this.absentNumbers,
//     required this.leaveNumbers,
//     required this.attendanceLeft,
//     required this.absentPercent,
//     required this.presentPercent,
//     required this.leavePercent,
//   });
//   static CampusModel fromJson(json) => CampusModel(
//         attendanceLeft: json['attendanceLeft'],
//         schoolName: json['schoolName'],
//         leaveNumbers: json['leaveNumbers'],
//         presentNumbers: json['presentNumbers'],
//         absentNumbers: json['absentNumbers'],
//         absentPercent: json['absentPercent'],
//         presentPercent: json['attendancePercent'],
//         leavePercent: json['leavePercent'],
//       );
// }

// List<CampusModel> getDataOfSchool() {
//   var listofData = [
//     {
//       "schoolName": "New York Campus",
//       "presentNumbers": "2050",
//       "absentNumbers": "25",
//       "leaveNumbers": "37",
//       "attendanceLeft": "Attendance Left : 10 Students",
//       "absentPercent": "1.2%",
//       "presentPercent": "97.1%",
//       "leavePercent": "1.75%",
//     },
//     {
//       "schoolName": "New York Campus",
//       "presentNumbers": "2050",
//       "absentNumbers": "25",
//       "leaveNumbers": "37",
//       "attendanceLeft": "Attendance Left : 10 Students",
//       "absentPercent": "1.2%",
//       "presentPercent": "97.1%",
//       "leavePercent": "1.75%",
//     },
//     {
//       "schoolName": "New York Campus",
//       "presentNumbers": "2050",
//       "absentNumbers": "25",
//       "leaveNumbers": "37",
//       "attendanceLeft": "Attendance Left : 10 Students",
//       "absentPercent": "1.2%",
//       "presentPercent": "97.1%",
//       "leavePercent": "1.75%",
//     },
//   ];
//   return listofData.map<CampusModel>(CampusModel.fromJson).toList();
// }
