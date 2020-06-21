import 'package:firstapp/mixins/validation.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Validation {
  // Global key validation
  final formKey = GlobalKey<FormState>();

  // Variable
  String name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              nameField(),
              emailField(),
              passwordField(),
              registerButton(),
            ],
          )),
    );
  }

  Widget nameField() => TextFormField(
        validator: nameValidate,
        onSaved: (String value) {
          name = value;
        },
        decoration: InputDecoration(labelText: 'Fullname'),
      );

  Widget emailField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        validator: emailValidate,
        onSaved: (String value) {
          email = value;
        },
        decoration:
            InputDecoration(labelText: 'Email', hintText: 'example@domain.com'),
      );

  Widget passwordField() => TextFormField(
        obscureText: true,
        validator: passwordValidate,
        onSaved: (String value) {
          password = value;
        },
        decoration:
            InputDecoration(labelText: 'Passwords', hintText: 'Password'),
      );

  Widget registerButton() => RaisedButton(
        color: Colors.blueAccent,
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();

            print(name);
            print(email);
            print(password);
          }
        },
        child: Text('Register'),
      );
}
