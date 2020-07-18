import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Explicit

  final formKey = GlobalKey<FormState>();

  // Method

  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Upload');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }

  Widget nameText() {
    return TextFormField(
      style: TextStyle(
        color: Colors.purple,
        fontSize: 20.0,
      ),
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
        helperText: 'Type your firstname',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please Fill Your Firstname in the Blank';
        } else {
          return null;
        }
      },
    );
  }

  Widget lastnameText() {
    return TextFormField(
      style: TextStyle(
        color: Colors.indigo,
        fontSize: 20.0,
      ),
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
        helperText: 'Type your lastname',
        helperStyle: TextStyle(
          color: Colors.indigo,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please Fill Your Lastname in the Blank';
        } else {
          return null;
        }
      },
    );
  }

  Widget cardidText() {
    return TextFormField(
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20.0,
      ),
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
        helperText: 'Type your ID card number',
        helperStyle: TextStyle(
          color: Colors.blue,
          fontStyle: FontStyle.italic,
        ),
      ),validator: (String value){
        if (value.length < 13 ) {
          return 'Please enter 13 digits.';
        } else {
          return null;
        }
      },
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.green,
        fontSize: 20.0,
      ),
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
      validator: (String value) {
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'Please Type Email in Email format Exp. you@email.com';
        } else {
          return null;
        }
      },
    );
  }

  Widget usernameText() {
    return TextFormField(
      style: TextStyle(
        color: Colors.yellow[800],
        fontSize: 20.0,
      ),
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
      ),validator: (String value){
        if (value.length < 6 ) {
          return 'Username more 6 character';
        } else {
          return null;
        }
      },
    );
  }

  Widget passwordText() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: Colors.orange[900],
        fontSize: 20.0,
      ),
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
      validator: (String value){
        if (value.length < 6) {
          return 'Password more 6 character';
        } else {
          return null;
        }
      },
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
      body: Form(
        key: formKey,
        child: ListView(
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
      ),
    );
  }
}
