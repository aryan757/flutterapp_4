import 'package:flutter/material.dart';

class ChangeCo extends StatefulWidget {
  @override
  _ChangeCoState createState() => _ChangeCoState();
}

class _ChangeCoState extends State<ChangeCo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Change Coordinator'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Change Coordinator for Admin'),
      ),
    );
  }
}
