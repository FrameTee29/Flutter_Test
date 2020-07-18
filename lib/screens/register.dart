import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Explicit

  // Method

  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Upload');
      },
    );
  }

  Widget nameText() {
    return TextFormField(style: TextStyle(color:Colors.purple),
      decoration: InputDecoration(
        icon: Icon(
          Icons.account_box,
          color: Colors.purple,
          size: 40.0,
        ),
        labelText: 'Firstname :',
        labelStyle: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type your firstname ',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Register"),
        actions: <Widget>[
          registerButton(),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          nameText(),
        ],
      ),
    );
  }
}
