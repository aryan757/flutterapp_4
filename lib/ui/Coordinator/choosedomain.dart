import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app4/ui/Coordinator/Chooseteacher.dart';
import 'package:flutter_app4/ui/Coordinator/creategroup.dart';

class CreateDomain extends StatefulWidget {
  @override
  CreateDomainState createState() => new CreateDomainState();
}

class CreateDomainState extends State<CreateDomain> {
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
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => CreateGrp()));
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CreateTeacher()));
                    },
                    child: Text('Choose Domain')),
              ],
            ),
          ),
          new ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
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
      CheckBoxListTileModel(
          userId: 1, title: "Machine Learning", isCheck: true),
      CheckBoxListTileModel(
          userId: 2, title: "Cy7ber Security", isCheck: false),
      CheckBoxListTileModel(
          userId: 3, title: "App development", isCheck: false),
      CheckBoxListTileModel(userId: 4, title: "Data Science", isCheck: false),
      CheckBoxListTileModel(userId: 5, title: "AI", isCheck: false),
    ];
  }
}
