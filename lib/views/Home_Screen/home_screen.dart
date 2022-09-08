import 'package:chat_app/views/Home_Screen/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'call_screen/call_screen.dart';
import '../status_screen/status_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            splashRadius: 10.sp,
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
        bottom: TabBar(
          labelColor: Colors.white,
          controller: _controller,
          tabs: [
            /*  Tab(
              icon: Icon(Icons.camera_alt),
            ), */
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          // CameraPage(),
          Chat_Screen(),
          Status_screen(),
          Call_screen(),
        ],
      ),
    );
  }
}
