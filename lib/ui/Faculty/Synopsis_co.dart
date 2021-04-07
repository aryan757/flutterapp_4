import 'package:flutter/material.dart';

class SynoF extends StatefulWidget {
  @override
  _SynoFState createState() => _SynoFState();
}

class _SynoFState extends State<SynoF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Synopsis'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Synopsis list for Faclulty'),
      ),
    );
  }
}
