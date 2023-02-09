class GroupMessage {
  final String category;
  final String value;

  GroupMessage({
    required this.category,
    required this.value,
  });

  static GroupMessage fromJson(json) => GroupMessage(
        category: json['category'],
        value: json['value'],
      );
}

List<GroupMessage> getGroupMessage() {
  const variant = [
    {
      "category": "Communication",
      "value": "50 members Active",
    },
    {"category": "Teachers", "value": "39 members Active"},
    {"category": "Non Teaching Stafs", "value": "22 members Active"},
    {"category": "Bus group", "value": "14 members Active"},
  ];

  return variant.map<GroupMessage>(GroupMessage.fromJson).toList();
}
