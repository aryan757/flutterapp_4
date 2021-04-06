import 'package:flutter/material.dart';

class ProStatCo extends StatefulWidget {
  @override
  _ProStatCoState createState() => _ProStatCoState();
}

class _ProStatCoState extends State<ProStatCo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Project Status'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Project Status for Coordinator'),
      ),
    );
  }
}
