import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width - 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: const ImageIcon(
                    AssetImage("lib/assets/images/menuicon4.png"),
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Image(
                    height: 24,
                    image: AssetImage("lib/assets/images/notificon3.png"),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
