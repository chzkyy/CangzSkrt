import 'package:cangzskrt/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  loginScreen({Key key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
            color: Color(0xFFffffff),
            width: double.infinity,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only()),
                Center(
                  child: Image.asset(
                    'assets/logo.jpg',
                    height: 108,
                    width: 128,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "CANGZ SKRT",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        color: Color(0xFF4D2C26),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: Text(
                    "Cangkruk anti bingung!",
                    style: GoogleFonts.roboto(
                      fontSize: 22,
                      color: Color(0xFF4D2C26),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 120),
                _inputField1(context),
                SizedBox(height: 20),
                _inputField2(context),
                SizedBox(height: 20),
                _loginBtn(context),
                SizedBox(height: 20),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _loginBtn(context) {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return navBar();
    })),
    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 140),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
    child: Text(
      "Login",
      style: GoogleFonts.montserrat(
          fontSize: 15,
          color: Colors.white,
          letterSpacing: 0.168,
          fontWeight: FontWeight.w500),
    ),
    color: Color(0xFF4D2C26),
  );
}

Widget _inputField1(context) {
  return TextField(
      style: GoogleFonts.roboto(
          fontSize: 16,
          color: Color(0xFF4D2C26),
          letterSpacing: 0.24,
          fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: "Username",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
      ));
}

Widget _inputField2(context) {
  return TextField(
      style: GoogleFonts.roboto(
          fontSize: 16,
          color: Color(0xFF4D2C26),
          letterSpacing: 0.24,
          fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: "Password",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
      ));
}
