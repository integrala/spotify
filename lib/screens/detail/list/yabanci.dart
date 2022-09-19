import 'package:flutter/material.dart';

class Yabanci extends StatefulWidget {
  const Yabanci({Key? key}) : super(key: key);
  @override
  State<Yabanci> createState() => _YabanciViewState();
}

class _YabanciViewState extends State<Yabanci> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: Center(
              child: Image.asset(
                "assets/images/yabanci.jpg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        )
      ],
    );
  }
}
