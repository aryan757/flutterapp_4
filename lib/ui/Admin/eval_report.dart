import 'package:flutter/material.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';

class EvalReport extends StatefulWidget {
  @override
  _EvalReportState createState() => _EvalReportState();
}

class _EvalReportState extends State<EvalReport> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Evaluate Report'),
        elevation: 1,
      ),
      body: Center(
        child: _cardlistRating(context),
      ),
    );
  }
}

Widget _cardlistRating(BuildContext context) {
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
                    RatingBar(
                      color: Colors.blue,
                      spacing: 5,
                      onRatingCallback:
                          (double value, ValueNotifier<bool> isIndicator) {
                        print('Number of stars-->  $value');

                        isIndicator.value = true;
                      },
                      allowHalfRating: true,
                      isIndicator: false,
                      starCount: 5,
                      rating: 1,
                      icon: Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ),
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
    ],
  );
}
