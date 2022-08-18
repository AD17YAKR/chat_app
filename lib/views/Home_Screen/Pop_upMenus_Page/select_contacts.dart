import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';
import '../chat_screen/model/chat_model.dart';
import 'widgets/button_card.dart';
import 'widgets/contact_card.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  State<SelectContact> createState() => _SelectContactState();
}

List<ChatModel> chats = [
  ChatModel(
    name: "Blank 1",
    displayPicture: imageUrl,
    isGroup: false,
    time: "05:36",
    currentMessage: "Full 100",
  ),
  ChatModel(
    name: "Blank 2",
    displayPicture: imageUrl,
    isGroup: false,
    time: "04:59",
    currentMessage: "Exam Kaisa Gaya",
  ),
  ChatModel(
    name: "Hrishika Singh",
    displayPicture: imageUrl,
    isGroup: false,
    time: "05:36",
    currentMessage: "Full 100",
  ),
  ChatModel(
    name: "Prerna Singh",
    displayPicture: imageUrl,
    isGroup: false,
    time: "04:59",
    currentMessage: "Exam Kaisa Gaya",
  ),
  ChatModel(
    name: "Shashank Singh",
    displayPicture: imageUrl,
    isGroup: false,
    time: "03:26",
    currentMessage: "Integration Kab Hoga",
  ),
  ChatModel(
    name: "Shyam Sundar Rai",
    displayPicture: imageUrl,
    isGroup: false,
    time: "09:32",
    currentMessage: "Result aaya tera sorry mera",
  ),
  ChatModel(
    name: "Ayanabh Kamat",
    displayPicture: imageUrl,
    isGroup: false,
    time: "11:21",
    currentMessage: "Recharge Kar wale",
  ),
  ChatModel(
    name: "Nalla Group",
    displayPicture: imageUrl,
    isGroup: true,
    time: "11:21",
    currentMessage: "Recharge Kar wale",
  ),
  ChatModel(
    name: "Hrishika Singh",
    displayPicture: imageUrl,
    isGroup: false,
    time: "05:36",
    currentMessage: "Full 100",
  ),
  ChatModel(
    name: "Prerna Singh",
    displayPicture: imageUrl,
    isGroup: false,
    time: "04:59",
    currentMessage: "Exam Kaisa Gaya",
  ),
  ChatModel(
    name: "Shashank Singh",
    displayPicture: imageUrl,
    isGroup: false,
    time: "03:26",
    currentMessage: "Integration Kab Hoga",
  ),
  ChatModel(
    name: "Shyam Sundar Rai",
    displayPicture: imageUrl,
    isGroup: false,
    time: "09:32",
    currentMessage: "Result aaya tera sorry mera",
  ),
  ChatModel(
    name: "Ayanabh Kamat",
    displayPicture: imageUrl,
    isGroup: false,
    time: "11:21",
    currentMessage: "Recharge Kar wale",
  ),
  ChatModel(
    name: "Nalla Group",
    displayPicture: imageUrl,
    isGroup: true,
    time: "11:21",
    currentMessage: "Recharge Kar wale",
  )
];

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0)
            return ButtonCard(
              icon: Icons.group,
              name: "Create Group",
            );
          if (index == 1)
            return ButtonCard(
              icon: Icons.person_add,
              name: "New Contact",
            );
          return ContactCard(chat: chats[index]);
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Contacts",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "256 Contacts",
            style: TextStyle(fontSize: 12.sp),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        // IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        PopupMenuButton<String>(
          splashRadius: 10.sp,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          // color: Colors.white.withOpacity(),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("Invite a friend"),
              ),
              PopupMenuItem(
                child: Text("Contacts"),
              ),
              PopupMenuItem(
                child: Text("Refresh"),
              ),
              // PopupMenuItem(
              //   child: Text("Hel"),
              // ),
            ];
          },
        )
      ],
    );
  }
}
