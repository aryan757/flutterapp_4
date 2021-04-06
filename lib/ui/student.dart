import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentFlow extends StatefulWidget {
  @override
  _StudentFlowState createState() => _StudentFlowState();
}

class _StudentFlowState extends State<StudentFlow> {
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
        foregroundColor: Color(0xff1F456E),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              accountName: Text(
                'Student',
                style: TextStyle(fontSize: 14),
              ),
              accountEmail: Text(
                'studentmail@gmail.com',
                style: TextStyle(fontSize: 12),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              autofocus: true,
              hoverColor: Colors.blue,
              leading: Icon(
                Icons.view_column_outlined,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'View My Team Members',
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
                Icons.assignment_sharp,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Synopsis Overview',
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
                Icons.star_rate,
                size: 25,
                color: Colors.black,
              ),
              title: Text(
                'Members Rating',
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
              onTap: () {},
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
