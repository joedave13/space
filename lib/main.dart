import 'package:flutter/material.dart';
import 'package:space/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Space',
            style: TextStyle(
              fontSize: 24,
              color: kBlueColor,
            ),
          ),
        ),
      ),
    );
  }
}
