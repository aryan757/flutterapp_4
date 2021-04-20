import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Admin/admin.dart';

class MonitorMyteamU extends StatefulWidget {
  @override
  _MonitorMyteamUState createState() => _MonitorMyteamUState();
}

class _MonitorMyteamUState extends State<MonitorMyteamU> {
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
    ],
  );
}
