import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Admin/teacher_list.dart';

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
      body: SingleChildScrollView(
        child: Center(
            child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TeacherList()));
              },
              child: Card(
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Text(
                    'Team 1',
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TeacherList()));
              },
              child: Card(
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Text(
                    'Team 2',
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
