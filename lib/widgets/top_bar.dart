import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(Theme.of(context).brightness == Brightness.dark
                ? "assets/images/logo.png"
                : "assets/images/logo_black.png"),
            width: 120,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.favorite_rounded),
              SizedBox(width: 20),
              Icon(Icons.chat_bubble_rounded),
            ],
          )
        ],
      ),
    );
  }
}
