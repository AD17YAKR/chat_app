import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonCard extends StatelessWidget {
  final IconData icon;
  final String name;
  const ButtonCard({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23.sp,
        backgroundColor: Color.fromARGB(255, 63, 181, 63),
        child: Icon(
          icon,
          color: Colors.white,
          size: 26.sp,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ),
      // subtitle: Text(chat.currentMessage),
    );
  }
}
