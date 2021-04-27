import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final ImageProvider image;
  const PostCard({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: image,
                ),
                SizedBox(width: 10),
                Text(
                  "im_rohid",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ), // My instagram id
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Image(
            image: image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_outline_outlined,
                  size: 28,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.message_outlined,
                  size: 28,
                ),
                SizedBox(width: 10),
                Icon(Icons.send),
                Spacer(),
                Icon(
                  Icons.bookmark_border_outlined,
                  size: 28,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "209 likes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "im_rohid",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4),
                    Text("Hello everyone!"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
