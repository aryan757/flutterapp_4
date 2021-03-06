import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import './Studentclass.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:short_readable_id/short_readable_id.dart';

class CreateGrp extends StatefulWidget {
  @override
  CreateGrpState createState() => new CreateGrpState();
}

class CreateGrpState extends State<CreateGrp> {
  /* List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers(); */
  Student student = Student();
  Teacher teacher = Teacher();
  String _choosenvalue;
  TextEditingController _controller = TextEditingController();

  static List<Student> stu = [
    Student(id: 1, name: "Jatin", usn: "1NT17IS073"),
    Student(id: 2, name: "Dhiraj", usn: "1NT17IS074"),
    Student(id: 3, name: "Ashutosh", usn: "1NT17IS075"),
    Student(id: 4, name: "Aryan", usn: "1NT17IS034"),
    Student(id: 5, name: "Modi", usn: "1NT17IS0001"),
    Student(id: 6, name: "Mangyani", usn: "1NT17IS085"),
    Student(id: 7, name: "Deepu", usn: "1NT17IS095"),
    Student(id: 8, name: "Aviral", usn: "1NT17IS092"),
    Student(id: 9, name: "Anuj", usn: "1NT17IS065"),
    Student(id: 10, name: "Harshit", usn: "1NT17IS055"),
  ];
  static List<Student> teac = [
    Student(id: 1, name: "Sanjay HA"),
    Student(id: 2, name: "RangaVittala"),
    Student(id: 3, name: "Mohan Kumar"),
    Student(id: 4, name: "DR.Manoj Kumar"),
    Student(id: 5, name: "Ramya BR"),
    Student(id: 6, name: "Akshatha GC"),
    Student(id: 7, name: "DR.Aditya Shastry"),
    Student(id: 8, name: "DR.DB Srinivas"),
  ];
  var myint = Random().nextInt(100);

  final _items = stu
      .map((student) => MultiSelectItem<Student>(student, student.name))
      .toList();
  final _items1 = teac
      .map((teacher) => MultiSelectItem<Student>(teacher, teacher.name))
      .toList();
  List<Student> _selectedstudent2 = [];
  List<Student> _selectedstudent3 = [];
  List<Student> _selectedstudent4 = [];
  List _selectedstudent5 = [];

  final _multiSelectKey = GlobalKey<FormFieldState>();
  @override
  void initState() {
    _selectedstudent2 = stu;
    _selectedstudent3 = teac;
    _controller.addListener(_onSearchChanged);
    super.initState();
  }

  _onSearchChanged() {
    print(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
        title: new Text(
          'Create Group',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
                ),
                SizedBox(
                  height: 20,
                ),
                MultiSelectDialogField(
                  items: _items,
                  title: Text("Select Student"),
                  selectedColor: Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  buttonIcon: Icon(
                    Icons.arrow_downward,
                    color: Colors.blue,
                  ),
                  buttonText: Text(
                    "Students",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                    ),
                  ),
                  onConfirm: (results) {
                    _selectedstudent2 = results;
                  },
                ),
                SizedBox(height: 50),
                DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _choosenvalue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'Android',
                    'machine Learning',
                    'AI',
                    'Cyber Security',
                    'Data Science',
                    'Web Development',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "Please choose Domain",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _choosenvalue = value;
                    });
                  },
                ),
                SizedBox(height: 50),
                MultiSelectDialogField(
                  items: _items1,
                  title: Text("Select Teacher"),
                  selectedColor: Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  buttonIcon: Icon(
                    Icons.arrow_downward,
                    color: Colors.blue,
                  ),
                  buttonText: Text(
                    "Teacher",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                    ),
                  ),
                  onConfirm: (results) {
                    _selectedstudent3 = results;
                  },
                ),
                SizedBox(height: 80),
                Container(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    elevation: 3,
                    color: Colors.blueAccent,
                    child: Text(
                      "Save Group",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Map<String, dynamic> data = {
                        /*  "id": idGenerator.generateReadable(), */
                        "name1": _selectedstudent2[0].name,
                        "usn1": _selectedstudent2[0].usn,
                        "name2": _selectedstudent2[1].name,
                        "usn2": _selectedstudent2[1].usn,
                        "name3": _selectedstudent2[2].name,
                        "usn3": _selectedstudent2[2].usn,
                        "name4": _selectedstudent2[3].name,
                        "usn4": _selectedstudent2[3].usn,
                        "domain": _choosenvalue.toString(),
                        "guide": _selectedstudent3[0].name,
                      };
                      FirebaseFirestore.instance.collection("groups").add(data);
                      Fluttertoast.showToast(
                        msg: "Group is Created",
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        gravity: ToastGravity.BOTTOM,
                        fontSize: 16,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /* void itemChange(bool val, int index) {
    // function for checkbox
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  } */
}

/*class CheckBoxListTileModel {
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
}*/
