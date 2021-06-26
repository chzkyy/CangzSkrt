import 'package:cangzskrt/models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class menuScreen extends StatefulWidget {
  final Trending trending;
  menuScreen({this.trending});

  @override
  _menuScreenState createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: ExactAssetImage(widget.trending.menu),
          fit: BoxFit.cover
        )
        ),
      ),
    );
  }
}
