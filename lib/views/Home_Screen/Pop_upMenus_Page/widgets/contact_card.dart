import 'package:chat_app/views/Home_Screen/chat_screen/model/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactCard extends StatelessWidget {
  final ChatModel chat;
  const ContactCard({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23.sp,
        backgroundColor: Colors.blueGrey.shade200,
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 26.sp,
        ),
      ),
      title: Text(
        chat.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
        ),
      ),
      subtitle: Text(
        chat.currentMessage,
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 13.sp,
        ),
      ),
    );
  }
}
