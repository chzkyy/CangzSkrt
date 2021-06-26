import 'package:cangzskrt/Screen/pesanScreen.dart';
import 'package:cangzskrt/Screen/trandingScreen.dart';
import 'package:cangzskrt/widget/searchCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
                onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pesanScreen();
                    })),
                icon: const Icon(Icons.chat_rounded))
          ],
        ),
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: SearchCard(),
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8),
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('assets/img/banner1.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('assets/img/banner2.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //Trending in Jakarta
                Container(
                  padding: EdgeInsets.only(
                    top: 45.0,
                  ),
                  child: trandingScreen(),
                ),
              ],
            ),
          ),
        )));
  }
}
