import 'package:cangzskrt/models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class imageScreen extends StatefulWidget {
  final Trending trending;
  imageScreen({this.trending});

  @override
  _imageScreenState createState() => _imageScreenState();
}

class _imageScreenState extends State<imageScreen> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: ExactAssetImage(widget.trending.imageUrl),
          fit: BoxFit.cover
        )
        ),
      ),
    );
  }
}
