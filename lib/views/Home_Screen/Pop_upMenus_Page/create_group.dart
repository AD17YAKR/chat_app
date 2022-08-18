import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';
import '../chat_screen/model/chat_model.dart';
import 'widgets/button_card.dart';
import 'widgets/contact_card.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

List<ChatModel> group = [];
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

class _CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                height: 75.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatar();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              Divider(),
            ],
          ),
          ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) return Container();
              if (index == 1) return Container();
              return InkWell(
                onTap: () {
                  if (chats[index].selected == false)
                    setState(() {
                      chats[index].selected = true;
                      group.add(chats[index]);
                      // print(chats[index].selected);
                    });
                  // if (chats[index].selected == true)
                  else
                    setState(() {
                      chats[index].selected = false;
                      // print(chats[index].selected);
                      group.remove(chats[index]);
                    });
                },
                child: ContactCard(chat: chats[index]),
              );
            },
          ),
        ],
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
            ];
          },
        )
      ],
    );
  }
}
