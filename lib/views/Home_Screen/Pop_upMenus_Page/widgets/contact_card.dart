import 'package:chat_app/utils/color.dart';
import 'package:chat_app/views/Home_Screen/chat_screen/model/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactCard extends StatelessWidget {
  final ChatModel chat;
  const ContactCard({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 50.sp,
            child: CircleAvatar(
              radius: 23.sp,
              backgroundColor: Colors.blueGrey.shade200,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 26.sp,
              ),
            ),
          ),
          Positioned(
            child: chat.selected
                ? CircleAvatar(
                    radius: 12,
                    backgroundColor: appBarColor,
                    child: Icon(
                      Icons.check,
                      size: 12,
                    ),
                  )
                : Container(),
            bottom: -3,
            right: 0,
          )
        ],
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
