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
        helperText: 'Please enter your firstname',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }


  Widget lastnameText() {
    return TextFormField(style: TextStyle(color:Colors.indigo),
      decoration: InputDecoration(
        icon: Icon(
          Icons.portrait,
          color: Colors.indigo,
          size: 40.0,
        ),
        labelText: 'Lastname :',
        labelStyle: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Please enter your lastname',
        helperStyle: TextStyle(
          color: Colors.indigo,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget cardidText() {
    return TextFormField(style: TextStyle(color:Colors.blue),
      decoration: InputDecoration(
        icon: Icon(
          Icons.card_membership,
          color: Colors.blue,
          size: 40.0,
        ),
        labelText: 'ID card number :',
        labelStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Please enter your ID card number',
        helperStyle: TextStyle(
          color: Colors.blue,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget emailText() {
    return TextFormField(style: TextStyle(color:Colors.green),
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.green,
          size: 40.0,
        ),
        labelText: 'Email :',
        labelStyle: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type your email',
        helperStyle: TextStyle(
          color: Colors.green,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget usernameText() {
    return TextFormField(style: TextStyle(color:Colors.yellow[800]),
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          color: Colors.yellow[800],
          size: 40.0,
        ),
        labelText: 'Username :',
        labelStyle: TextStyle(
          color: Colors.yellow[800],
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type your username more 6 character',
        helperStyle: TextStyle(
          color: Colors.yellow[800],
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget passwordText() {
    return TextFormField(style: TextStyle(color:Colors.orange[900]),
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.orange[900],
          size: 40.0,
        ),
        labelText: 'Password :',
        labelStyle: TextStyle(
          color: Colors.orange[900],
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type your password more 6 character',
        helperStyle: TextStyle(
          color: Colors.orange[900],
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
          lastnameText(),
          cardidText(),
          emailText(),
          usernameText(),
          passwordText(),
        ],
      ),
    );
  }
}
