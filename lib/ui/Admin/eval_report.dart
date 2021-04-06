import 'package:flutter/material.dart';

class EvalReport extends StatefulWidget {
  @override
  _EvalReportState createState() => _EvalReportState();
}

class _EvalReportState extends State<EvalReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Evaluate Report'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Evaluate Report for admin'),
      ),
    );
  }
}
