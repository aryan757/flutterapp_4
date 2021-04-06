import 'package:flutter/material.dart';

class SynoCo extends StatefulWidget {
  @override
  _SynoCoState createState() => _SynoCoState();
}

class _SynoCoState extends State<SynoCo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Synopsis'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Synopsis for Coordinator'),
      ),
    );
  }
}
