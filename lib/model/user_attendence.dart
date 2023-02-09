import 'package:flutter/animation.dart';

class UserDetailsList {
  final String name;
  final String image;
  final bool isPresent;
  final bool isAbsent;
  final bool isOnDuty;

  UserDetailsList(
      {required this.name,
      required this.image,
      required this.isAbsent,
      required this.isOnDuty,
      required this.isPresent});

  static UserDetailsList fromJson(json) => UserDetailsList(
      name: json['name'],
      image: json['image'],
      isAbsent: json['isAbsent'],
      isOnDuty: json['isOnDuty'],
      isPresent: json['isPresent']);
}

List<UserDetailsList> getList() {
  const variant = [
    {
      "isAbsent": true,
      "isPresent": false,
      "isOnDuty": true,
      "name": "Walter White",
      "image":
          "https://img.freepik.com/free-photo/horizontal-shot-handsome-sporty-afro-american-boy-stylish-black-t-shirt-posing-isolated-with-fore-fingers-raised-pointing-fore-fingers-upwards-showing-copy-space-your-information_343059-2246.jpg?w=2000",
    },
    {
      "isAbsent": true,
      "isPresent": false,
      "isOnDuty": true,
      "name": "Hermonie",
      "image":
          "https://img.freepik.com/free-photo/success-triumph-joy-happiness-concept-adorable-cute-excited-little-afro-american-boy-having-overjoyed-ecstatic-facial-expression-smiling-clenching-fists-receiving-good-positive-news_343059-2226.jpg?w=2000"
    },
    {
      "isAbsent": true,
      "isPresent": false,
      "isOnDuty": true,
      "name": "Ron Wesily",
      "image":
          "https://media.istockphoto.com/id/1353379172/photo/cute-little-african-american-girl-looking-at-camera.jpg?s=612x612&w=0&k=20&c=RCOYytwS2nMGfEb80oyeiCcIiqMQu6wnTluAaxMBye4="
    },
    {
      "isAbsent": true,
      "isPresent": false,
      "isOnDuty": true,
      "name": "Lord Hook",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx7IP4AQxYYmsxQON9AbuQA18gF0s3j0ijOg&usqp=CAU"
    },
    {
      "isAbsent": true,
      "isPresent": true,
      "isOnDuty": false,
      "name": "John Snow",
      "image":
          "https://media.istockphoto.com/id/1352096257/photo/portrait-of-small-girl-in-living-room-at-home.jpg?b=1&s=170667a&w=0&k=20&c=qdNyuPQ_IeANA86TQknErCkHlEa7ISeMRGUyPRTHILE="
    },
    {
      "isAbsent": true,
      "isPresent": true,
      "isOnDuty": false,
      "name": "Biblo Baggers",
      "image":
          "https://www.nspcc.org.uk/globalassets/blocks---please-dont-save-images-here/02.-keeping-children-safe/at-home/18.03.21_abuse_neglect_1195.jpg?width=400&amp;mode=crop&amp;anchor=middlecenter"
    },
    {
      "isAbsent": true,
      "isPresent": true,
      "isOnDuty": false,
      "name": "john wick ",
      "image":
          "https://www.oxfordlearning.com/wp-content/uploads/2016/09/AdobeStock_47186368.jpeg "
    },
    {
      "isAbsent": false,
      "isPresent": true,
      "isOnDuty": true,
      "name": "Biber",
      "image":
          "https://www.sos-usa.org/getmedia/e8c32a35-6ed8-4724-b045-4f364f05b31c/sponsorshipmobile_update.jpg?width=960&height=640&ext=.jpg"
    },
    {
      "isAbsent": true,
      "isPresent": false,
      "isOnDuty": true,
      "name": "Michael ",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKCZb-zTlqMIGfEQjkaQkRc8OwvteHqotJ2Q&usqp=CAU"
    },
    {
      "isAbsent": true,
      "isPresent": false,
      "isOnDuty": true,
      "name": "Janet jackson",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs7SkX5FzLVfp3he14nF7FL4ZoHD3r7r9M-3IY2drq0HzxpgWFyiNFXtviU8tGh43VU-M&usqp=CAU"
    },
  ];

  return variant.map<UserDetailsList>(UserDetailsList.fromJson).toList();
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
