import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProStatF extends StatefulWidget {
  @override
  _ProStatFState createState() => _ProStatFState();
}

class _ProStatFState extends State<ProStatF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Project Status'),
          elevation: 1,
        ),
        body: _cardprojectstatusCo(context));
  }
}

Widget _cardprojectstatusCo(BuildContext context) {
  return ListView(
    children: [
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                AboutDialog(
                  children: [
                    Text('Team 1'),
                    Text('Aashutosh, Dhiraj, Aryan, Jatin'),
                    Text('Project title'),
                    Text('Guide'),
                    LinearPercentIndicator(
                      width: 140.0,
                      lineHeight: 14.0,
                      percent: 0.5,
                      center: Text(
                        "50.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      trailing: Icon(Icons.mood),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ],
                );
              });
        },
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Team 1',
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                AboutDialog(
                  children: [
                    Text('Team 2'),
                    Text('Aashutosh, Dhiraj, Aryan, Jatin'),
                    Text('Project title'),
                    Text('Guide'),
                    Text('Progress'),
                  ],
                );
              });
        },
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Team 2',
            ),
          ),
        ),
      ),
      Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text(
            'Team 3',
          ),
        ),
      ),
      Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text(
            'Team 4',
          ),
        ),
      ),
    ],
  );
}
