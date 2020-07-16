import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showlogo() {
    return Container(
      width: 150.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'PSUCOIN',
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.green.shade500,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Mansalva',
      ),
    );
  }

  Widget signInbutton() {
    return RaisedButton(
      color: Colors.green[800],
      child: Text(
        'Sign in',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );
  }

  Widget signupbutton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {},
    );
  }

  Widget showButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        signInbutton(),
        SizedBox(
          width: 8.0,
        ),
        signupbutton()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            showlogo(),
            SizedBox(
              height: 8.0,
            ),
            showAppName(),
            SizedBox(
              height: 8.0,
            ),
            showButton(),
          ],
        ),
      )),
    );
  }
}
