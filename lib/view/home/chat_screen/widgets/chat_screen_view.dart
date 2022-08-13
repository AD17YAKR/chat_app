import 'package:chat_app/view/home/chat_screen/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import './chat_screen_viewmodel.dart';

class ChatScreenView extends StatefulWidget {
  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  final GlobalKey<ScaffoldState> _scaffoldyKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatScreenViewModel>.reactive(
      viewModelBuilder: () => ChatScreenViewModel(),
      builder: (context, model, child) => Scaffold(
        key: _scaffoldyKey,
        appBar: buildAppBar(context),
        body: UserList(count: 1, name: "123"),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.photo),
            ),
            SizedBox(
              height: 12.h,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.edit),
            )
          ],
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // leading: Icon(Icons.rounded_corner),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
          // elevation: 0,
        )
      ],
      title: Text(
        "Signal",
      ),
    );
  }
}
