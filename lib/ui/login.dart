
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/signup.dart';
import 'package:flutter_app4/utils/auth_helper.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
              const SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  elevation: 3,
                  color: Colors.blueAccent,
                  child: Text("Login"),
                  onPressed: () async {
                    if (_emailController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      print("Email and password cannot be empty");
                      return;
                    }
                    try {
                      final user = await AuthHelper.signInWithEmail(
                          email: _emailController.text,
                          password: _passwordController.text);
                      if (user != null) {
                        print("login successful");
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              ),

              TextButton(
                child: Text("Create Account"),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SignupPage(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
