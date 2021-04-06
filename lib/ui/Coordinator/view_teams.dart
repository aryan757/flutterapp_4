import 'package:flutter/material.dart';

class ViewTeam extends StatefulWidget {
  @override
  _ViewTeamState createState() => _ViewTeamState();
}

class _ViewTeamState extends State<ViewTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('View Team'),
        elevation: 1,
      ),
      body: Center(
        child: Text('View Team for Coordinator'),
      ),
    );
  }
}
