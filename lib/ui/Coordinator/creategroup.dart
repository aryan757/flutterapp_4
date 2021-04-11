import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Coordinator/choosedomain.dart';

class CreateGrp extends StatefulWidget {
  @override
  CreateGrpState createState() => new CreateGrpState();
}

class CreateGrpState extends State<CreateGrp> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          'Create Group',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          new Container(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CreateDomain()));
                },
                child: Text('Choose Domain')),
            width: MediaQuery.of(context).size.width,
          ),
          new ListView.builder(
              itemCount: checkBoxListTileModel.length,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  child: new Container(
                    padding: new EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        new CheckboxListTile(
                            activeColor: Colors.pink[300],
                            dense: true,
                            //font change
                            title: new Text(
                              checkBoxListTileModel[index].title,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5),
                            ),
                            value: checkBoxListTileModel[index].isCheck,
                            onChanged: (bool val) {
                              itemChange(val, index);
                            })
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {
    // function for checkbox
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  int userId;

  String title;
  bool isCheck;

  CheckBoxListTileModel({this.userId, this.title, this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(userId: 1, title: "Jatin", isCheck: true),
      CheckBoxListTileModel(userId: 2, title: "Aashutosh", isCheck: false),
      CheckBoxListTileModel(userId: 3, title: "Dhiraj", isCheck: false),
      CheckBoxListTileModel(userId: 4, title: "Aryan", isCheck: false),
      CheckBoxListTileModel(userId: 5, title: "John Wick", isCheck: false),
    ];
  }
}
