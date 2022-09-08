import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class ReplyCard extends StatefulWidget {
  const ReplyCard({super.key});

  @override
  State<ReplyCard> createState() => _ReplyCardState();
}

class _ReplyCardState extends State<ReplyCard> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: replyMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  "hey there hey hey hey there hey hey there hey hey there hey hey there hey hey there hey hey there hey hey there hey hey there hey",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text("20:58 "),
                      Icon(Icons.done_all),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
