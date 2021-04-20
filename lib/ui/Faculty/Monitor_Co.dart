import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Admin/admin.dart';

class MonitorMyteamF extends StatefulWidget {
  @override
  _MonitorMyteamFState createState() => _MonitorMyteamFState();
}

class _MonitorMyteamFState extends State<MonitorMyteamF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Monitor My Team'),
          elevation: 1,
        ),
        body: _cardlist(context));
  }
}

Widget _cardlist(BuildContext context) {
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
