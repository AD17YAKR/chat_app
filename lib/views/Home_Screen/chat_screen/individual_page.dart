import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/views/Home_Screen/chat_screen/model/chat_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Individual_Chat_Screen extends StatefulWidget {
  final ChatModel chatModel;

  const Individual_Chat_Screen({
    Key? key,
    required this.chatModel,
  }) : super(key: key);

  @override
  State<Individual_Chat_Screen> createState() => _IndividualChat__ScreenState();
}

class _IndividualChat__ScreenState extends State<Individual_Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            CircleAvatar(
              // radius: 25.sp,

              child: CachedNetworkImage(
                imageUrl: widget.chatModel.displayPicture,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
