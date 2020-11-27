import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0D22),
          scaffoldBackgroundColor: Color(0xFF0A0D22)
      ),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        "/" : (context) => InputPage(),
        "/results" : (context) => ResultsPage()
      },
    );
  }
}


