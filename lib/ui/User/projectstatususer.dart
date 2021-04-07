import 'package:flutter/material.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';

class ProjectUser extends StatefulWidget {
  @override
  _ProjectUserState createState() => _ProjectUserState();
}

class _ProjectUserState extends State<ProjectUser> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Evaluate Report'),
        elevation: 1,
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text('Team 1'),
              Text('Aashutosh, Dhiraj, Aryan, Jatin'),
              Text('Project title'),
              Text('Guide'),
              LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.blue,
                value: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
