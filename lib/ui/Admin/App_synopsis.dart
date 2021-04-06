import 'package:flutter/material.dart';

class AppSyno extends StatefulWidget {
  @override
  _AppSynoState createState() => _AppSynoState();
}

class _AppSynoState extends State<AppSyno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Approved Synopsis'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Approved Synopis for Admin'),
      ),
    );
  }
}
