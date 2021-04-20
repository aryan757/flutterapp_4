import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Admin/App_synopsis.dart';
import 'package:flutter_app4/ui/Admin/ChangeCo.dart';
import 'package:flutter_app4/ui/Admin/Monitorteam.dart';
import 'package:flutter_app4/ui/Admin/Project_status.dart';
import 'package:flutter_app4/ui/Admin/eval_report.dart';
import 'package:flutter_app4/utils/auth_helper.dart';

import 'package:google_fonts/google_fonts.dart';

class AdminFlow extends StatefulWidget {
  @override
  _AdminFlowState createState() => _AdminFlowState();
}

class _AdminFlowState extends State<AdminFlow> {
  int index = 0;
  List<Widget> list = [
    MonitorMyteamAdmin(),
    EvalReport(),
    ChangeCo(),
    ProStat(),
    AppSyno(),
  ];
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
        foregroundColor: Colors.blueAccent,
      ),
      body: list[index],
      drawer: MyDrawer(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                accountName: Text('User',
                    style: GoogleFonts.raleway(
                        fontSize: 17.0, color: Colors.black26)),
                accountEmail: Text(
                  'Testmail@gmail.com',
                  style: TextStyle(fontSize: 12),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => onTap(context, 0),
                autofocus: true,
                hoverColor: Colors.blueAccent,
                leading: Icon(
                  Icons.home_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Monitor My Team',
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 14),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => onTap(context, 1),
                autofocus: true,
                hoverColor: Colors.blueAccent,
                leading: Icon(
                  Icons.edit_attributes_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Evaluate Report',
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 14),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => onTap(context, 2),
                autofocus: true,
                hoverColor: Colors.blueAccent,
                leading: Icon(
                  Icons.ac_unit,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Change Coordinator',
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 14),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => onTap(context, 3),
                autofocus: true,
                hoverColor: Colors.blueAccent,
                leading: Icon(
                  Icons.priority_high_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Project Status',
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 14),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => onTap(context, 4),
                autofocus: true,
                hoverColor: Colors.blueAccent,
                leading: Icon(
                  Icons.note_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                title: Text(
                  'Approved Synopsis',
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 14),
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
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Log Out',
                  style: GoogleFonts.raleway(
                      color: Colors.blueAccent, fontSize: 14),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        )));
  }
}
