import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/utils/color.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/views/Home_Screen/chat_screen/model/chat_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: Container(
        color: Colors.blueGrey,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: size.width / 1.2,
                      child: TextFormField(
                        // textAlign: TextAlign.center,
                        showCursor: true,
                        autocorrect: true,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: "  Type a Message.....",
                            border: InputBorder.none,
                            prefixIconColor: Colors.grey,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.emoji_emotions_outlined),
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return bottomSheet();
                                          // return Column();
                                        });
                                  },
                                  icon: Icon(Icons.attach_file),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt_outlined),
                                )
                              ],
                            )),
                        maxLines: 20,
                        minLines: 1,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: appBarColor,
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // pickEmoji()
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: CircleAvatar(
        radius: 12.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: widget.chatModel.displayPicture,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.chatModel.name,
            style: TextStyle(fontSize: 18.sp),
          ),
          Text(
            "last seen on " + widget.chatModel.time,
            style: TextStyle(fontSize: 12.sp),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        PopupMenuButton<String>(
          splashRadius: 100.sp,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          // color: Colors.white.withOpacity(),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
              ),
              PopupMenuItem(
                child: Text("Starred Messages"),
              ),
              PopupMenuItem(
                child: Text("Settings"),
              ),
              PopupMenuItem(
                child: Text("New Brodcast"),
              ),
            ];
          },
        )
      ],
    );
  }

//TODO:Complete Emoji Picker
  Widget pickEmoji() {
    return EmojiPicker();
  }

  Widget bottomSheet() {
    return Container(
      // color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 245.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        margin: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                theIcon(
                  Icons.file_copy_rounded,
                  "Document",
                  Colors.indigo,
                ),
                theIcon(
                  Icons.camera,
                  "Camera",
                  Colors.pink,
                ),
                theIcon(
                  Icons.insert_photo,
                  "Gallery",
                  Colors.purple,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                theIcon(
                  Icons.headphones,
                  "Audio",
                  Colors.orange,
                ),
                theIcon(
                  Icons.location_on,
                  "Location",
                  Colors.pinkAccent.shade400,
                ),
                theIcon(
                  Icons.person,
                  "Contact",
                  Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget theIcon(IconData icon, String name, Color color) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 32.sp,
            backgroundColor: color,
            child: Icon(
              icon,
              size: 26.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
