import 'package:flutter/material.dart';

class AppSyno extends StatefulWidget {
  @override
  _AppSynoState createState() => _AppSynoState();
}

class _AppSynoState extends State<AppSyno> {
  TextEditingController _cont1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Approved Synopsis'),
        elevation: 1,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Department',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Year',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Sem',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Team Name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Members',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Domain',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Guide Name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Abstract',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextFormField(
                  controller: _cont1,
                  autocorrect: true,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 1.2,
                      ),
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Objective',
                  ),
                ),
              ),
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                elevation: 3,
                                content: Text('your Synopsis is Submited'),
                              ));
                    },
                    child: Text('Submit'))),
          ],
        ),
      ),
    );
  }
}
