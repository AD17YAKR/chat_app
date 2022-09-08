import 'package:chat_app/utils/color.dart';
import 'package:chat_app/views/Home_Screen/Pop_upMenus_Page/select_contacts.dart';
import 'package:chat_app/views/Home_Screen/chat_screen/chat_info_card.dart';
import 'package:chat_app/views/Home_Screen/chat_screen/model/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  List<ChatModel> chats = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => SelectContact());
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return ChatListCard(chat: chats[index]);
        },
      ),
    );
  }
}
