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
      body: Center(child: _viewTeams(context)),
    );
  }
}

Widget _viewTeams(BuildContext context) {
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
