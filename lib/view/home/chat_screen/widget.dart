import 'package:chat_app/view/home/chat_screen/service/service.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final String name;
  final int count;
  UserList({
    Key? key,
    required this.name,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignalList();
  }
}

class SignalList extends StatefulWidget {
  const SignalList({Key? key}) : super(key: key);

  @override
  State<SignalList> createState() => _SignalListState();
}

class _SignalListState extends State<SignalList> {
  int count = 0;
  BoxConstraints constraints = BoxConstraints();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight,
      child: FutureBuilder(
        future: getUser(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading"),
            );
          } else {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent.shade700,
                      child: Text(snapshot.data[index].name
                          .substring(0, 2)
                          .toUpperCase()),
                    ),
                    title: Text("${snapshot.data[index].name}"),
                    subtitle: Text("${snapshot.data[index].name} is on Signal"),
                    trailing: Column(
                      children: [Text("Feb 4")],
                    ),
                  ),
                );
              },
              itemCount: snapshot.data.length,
            );
          }
        },
      ),
    );
  }
}
