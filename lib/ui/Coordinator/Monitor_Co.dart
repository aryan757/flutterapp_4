import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Admin/admin.dart';

class MonitorMyteamCo extends StatefulWidget {
  @override
  _MonitorMyteamCoState createState() => _MonitorMyteamCoState();
}

class _MonitorMyteamCoState extends State<MonitorMyteamCo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Monitor My Team'),
        elevation: 1,
      ),
      body: Center(
        child: Text('this is monitor my team section for Coordinator'),
      ),
    );
  }
}
