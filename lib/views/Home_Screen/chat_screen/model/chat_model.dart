import 'package:flutter/material.dart';

class ChatModel {
  String name;
  String displayPicture;
  bool isGroup;
  String time;
  String currentMessage;
  ChatModel({
    required this.name,
    required this.displayPicture,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
  });
}
