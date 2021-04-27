import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_card.dart';
import 'package:instagram_clone/widgets/top_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    PostCard(image: AssetImage("assets/images/photo1.jpg")),
                    PostCard(image: AssetImage("assets/images/photo2.jpg")),
                    PostCard(image: AssetImage("assets/images/photo3.jpg")),
                    PostCard(image: AssetImage("assets/images/photo4.jpg")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
