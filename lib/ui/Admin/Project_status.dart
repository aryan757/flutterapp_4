import 'package:flutter/material.dart';

class ProStat extends StatefulWidget {
  @override
  _ProStatState createState() => _ProStatState();
}

class _ProStatState extends State<ProStat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Project Status'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Project Status for admin'),
      ),
    );
  }
}
