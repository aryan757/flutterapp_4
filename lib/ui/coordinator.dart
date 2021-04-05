import 'package:flutter/material.dart';
import 'package:flutter_app4/utils/auth_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class CoordinatorFlow extends StatefulWidget {
  @override
  _CoordinatorFlowState createState() => _CoordinatorFlowState();
}

class _CoordinatorFlowState extends State<CoordinatorFlow> {
  @override
  Widget build(BuildContext context) {
    var change_circle_outlined;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))
        ],
        elevation: 2,
        centerTitle: true,
        foregroundColor: Colors.indigo,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              accountName: Text(
                'Coordinator',
                style: TextStyle(fontSize: 12),
              ),
              accountEmail: Text(
                'coordinatorsmail@gmail.com',
                style: TextStyle(fontSize: 10),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              autofocus: true,
              hoverColor: Colors.blue,
              leading: Icon(
                Icons.assessment_outlined,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Monitor My Team',
                style: TextStyle(color: Colors.black, fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              autofocus: true,
              hoverColor: Colors.blueAccent,
              leading: Icon(
                Icons.assignment_turned_in_outlined,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Synopsis Approval',
                style: TextStyle(color: Colors.black, fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              autofocus: true,
              hoverColor: Colors.blueAccent,
              leading: Icon(
                Icons.monitor,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'View Teams',
                style: TextStyle(color: Colors.black, fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              autofocus: true,
              hoverColor: Colors.blueAccent,
              leading: Icon(
                Icons.auto_awesome_motion,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Project Status',
                style: TextStyle(color: Colors.black, fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              autofocus: true,
              hoverColor: Colors.blueAccent,
              leading: Icon(
                Icons.notifications,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.black, fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                AuthHelper.logOut();
              },
              autofocus: true,
              hoverColor: Colors.blueAccent,
              leading: Icon(
                Icons.logout,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.black, fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
