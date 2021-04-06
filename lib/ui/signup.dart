import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app4/utils/auth_helper.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
    _confirmPasswordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                //jatin
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/frame.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 50.0),
              Container(
                //jatin
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text("Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: TextFormField(
                    controller: _emailController,
                    autocorrect: true,
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 1.2,
                        ),
                      ),
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: TextFormField(
                    controller: _passwordController,
                    autocorrect: true,
                    maxLines: 1,
                    autofocus: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 1.2,
                        ),
                      ),
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    autocorrect: true,
                    maxLines: 1,
                    autofocus: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 1.2,
                        ),
                      ),
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              RaisedButton(
                elevation: 3,
                color: Colors.blueAccent,
                child: Text(
                  "Signup",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if (_emailController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    print("Email and password cannot be empty");
                    return;
                  }
                  if (_confirmPasswordController.text.isEmpty ||
                      _passwordController.text !=
                          _confirmPasswordController.text) {
                    print("confirm password does not match");
                    return;
                  }
                  try {
                    final user = await AuthHelper.signupWithEmail(
                        email: _emailController.text,
                        password: _passwordController.text);
                    if (user != null) {
                      print("signup successful");
                      Navigator.pop(context);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
