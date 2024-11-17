import 'package:flutter/material.dart';
import 'package:farming_app/core/constants/constants.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize; // default is 56.0

  @override
  AppbarWidgetState createState() => AppbarWidgetState();
}

class AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SizedBox(
            height: 25,
            // child: Image.asset("images/dardo.png"),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "greenside",
            style: TextStyle(fontSize: 16, color: lightEsmeraldColor),
          )
        ],
      ),
      backgroundColor: neutralColor,
    );
  }
}
