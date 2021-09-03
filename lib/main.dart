import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mood assessment widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MoodAssessor(title: 'Flutter Demo Home Page'),
    );
  }
}

class MoodAssessor extends StatefulWidget {
  MoodAssessor({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MoodAssessorState createState() => _MoodAssessorState();
}

class _MoodAssessorState extends State<MoodAssessor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'There will be mood assessment widget',
            ),
          ],
        ),
      ),
    );
  }
}
