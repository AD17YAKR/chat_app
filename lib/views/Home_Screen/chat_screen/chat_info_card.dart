import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat_app/views/Home_Screen/chat_screen/individual_page.dart';
import 'package:chat_app/views/Home_Screen/chat_screen/model/chat_model.dart';

class ChatListCard extends StatelessWidget {
  final ChatModel chat;
  ChatListCard({
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => Individual_Chat_Screen(chatModel: chat));
      },
      child: Column(
        children: [
          ListTile(
            leading: ClipOval(
              child: CircleAvatar(
                radius: 25.sp,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://images.unsplash.com/photo-1656603758843-c59817dba6ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                ),
              ),
            ),
            title: Text(
              chat.name,
              style: GoogleFonts.openSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Text(
              chat.time,
              style: TextStyle(
                fontSize: 13.sp,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(chat.currentMessage),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 80.0.w),
            child: Divider(
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
