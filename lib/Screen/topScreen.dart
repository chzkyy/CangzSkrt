import 'package:carousel_slider/carousel_slider.dart';
import 'package:cangzskrt/Screen/imageScreen.dart';
import 'package:cangzskrt/Screen/menuScreen.dart';
import 'package:cangzskrt/models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class topScreen extends StatefulWidget {
  final Trending trending;
  topScreen({this.trending});
  @override
  _topScreenState createState() => _topScreenState();
}

class _topScreenState extends State<topScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 40.0,
        width: 200.0,
        child: FloatingActionButton(
          child: Icon(Icons.call),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () {
            print('calling...');
          },
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.trending.name),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: 200.0,
                            enlargeCenterPage: false,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 0.8),
                        items: [
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(widget.trending.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(widget.trending.image2),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(widget.trending.image3),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 200.0,
                        left: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.trending.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 250.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 3.0),
                          Icon(
                            Icons.location_on,
                            size: 20.0,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            widget.trending.location,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 280.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 3.0),
                          Icon(
                            Icons.access_time_sharp,
                            size: 20.0,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            widget.trending.open,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 310.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 3.0),
                          Icon(
                            Icons.rate_review,
                            size: 20.0,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            widget.trending.rating,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 340.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 3.0),
                          Icon(
                            Icons.attach_money,
                            size: 20.0,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            widget.trending.price,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 390.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 3.0),
                          Text(
                            'Ambience',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 410.0,
                      ),
                      height: 210.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: trendings.length,
                        itemBuilder: (BuildContext context, int index) {
                          Trending trending = trendings[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => imageScreen(
                                  trending: trending,
                                ),
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              width: 210.0,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  Positioned(
                                    bottom: 15.0,
                                    child: Container(
                                      height: 120.0,
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Stack(
                                      children: <Widget>[
                                        Hero(
                                          tag: trending.imageUrl,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image(
                                              width: 230.0,
                                              height: 230.0,
                                              image:
                                                  AssetImage(trending.imageUrl),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //menu
                    Container(
                      padding: EdgeInsets.only(
                        top: 630.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 3.0),
                          Text(
                            'Menu',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 640.0,
                      ),
                      height: 210.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: trendings.length,
                        itemBuilder: (BuildContext context, int index) {
                          Trending trending = trendings[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => menuScreen(
                                  trending: trending,
                                ),
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              width: 210.0,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  Positioned(
                                    bottom: 15.0,
                                    child: Container(
                                      height: 120.0,
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Stack(
                                      children: <Widget>[
                                        Hero(
                                          tag: trending.menu,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image(
                                              width: 230.0,
                                              height: 230.0,
                                              image: AssetImage(trending.menu),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
