import 'package:bunpwa/widget/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.45),
            radius: 1,
            colors: [Colors.white, Colors.lime, Colors.brown],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildContainer(),
                buildText(),
                buildContainerUser(),
                buildContainerPassword(),
                buildLogin(),
                buildFlatButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FlatButton buildFlatButton() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Register(),)
            );
      },
      child: Text(
        'New Register',
        style: TextStyle(color: Colors.yellow.shade300),
      ),
    );
  }

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: RaisedButton(
        color: Colors.pink.shade200,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Container buildContainerUser() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Username',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildContainerPassword() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: 250,
      child: TextField(
        obscureText: statusRedEye,
        decoration: InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                setState(() {
                  statusRedEye = !statusRedEye;
                });
              }),
        ),
      ),
    );
  }

  Text buildText() => Text(
        'PWA Thailand',
        style: GoogleFonts.vt323(
          textStyle: TextStyle(
            fontSize: 50,
            color: Colors.pink.shade200,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Container buildContainer() {
    return Container(
      width: 280,
      child: Image.asset('images/logo.png'),
    );
  }
}
