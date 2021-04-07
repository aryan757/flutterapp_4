import 'package:flutter/material.dart';

class TeacherList extends StatefulWidget {
  @override
  _TeacherListState createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Change Coordinator'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Teacher List'),
      ),
    );
  }
}
