import 'package:cangzskrt/Screen/favScreen.dart';
import 'package:cangzskrt/Screen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profileScreen extends StatefulWidget {
  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("My Profile")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.green,
                      child:
                          Image.asset('assets/iniprof.jpg', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              // SizedBox(width: 3.0),
                              Padding(padding: EdgeInsets.only(left: 8.0)),
                              Text(
                                'Username',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              // SizedBox(width: 3.0),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 33.0, top: 10, bottom: 10)),
                              Text(
                                'user@user.com',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              // SizedBox(width: 4.0),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Icon(
                                Icons.edit,
                                size: 15.0,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5.0)),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                ListTile(
                  title: Text('Favorite'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => favScreen(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Search History'),
                ),
                ListTile(
                  title: Text('Help'),
                ),
                ListTile(
                  title: Text('About'),
                ),
                ListTile(
                  title: Text('Log Out',
                  style: TextStyle(
                    color: Color(0xFF4D2C26),
                    fontWeight: FontWeight.w600
                  ),),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return loginScreen();
                  })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
