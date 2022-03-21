import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/appbar.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80), child: CustomAppBar()),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                "Inbox",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              thickness: 2,
              color: Color(0xffC4C4C4),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image(
                  height: 300,
                  image: AssetImage("lib/assets/images/nomessages.png")),
            ),
            Text(
              "No messages yet!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Color(0xffFB6161),
        ));
  }
}
