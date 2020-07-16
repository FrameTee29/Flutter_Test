import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showAppName() {
    return Text('Ung Shopping Mall');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[showAppName(), showAppName(), showAppName()],
        ),
      )),
    );
  }
}
