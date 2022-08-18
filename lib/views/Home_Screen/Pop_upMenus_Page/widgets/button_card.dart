import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonCard extends StatefulWidget {
  final IconData icon;
  final String name;
  const ButtonCard({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23.sp,
        backgroundColor: Color.fromARGB(255, 63, 181, 63),
        child: Icon(
          widget.icon,
          color: Colors.white,
          size: 26.sp,
        ),
      ),
      title: Text(
        widget.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ),
      // subtitle: Text(chat.currentMessage),
    );
  }
}
