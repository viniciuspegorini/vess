import 'package:flutter/material.dart';
import 'package:vess_oficial/screens/evaluate/1_layer.dart';
import 'package:vess_oficial/screens/evaluate/2_layer.dart';
import 'package:vess_oficial/screens/evaluate/3_layer.dart';
import 'package:vess_oficial/screens/evaluate/4_layer.dart';
import 'package:vess_oficial/screens/evaluate/5_layer.dart';
import 'package:vess_oficial/screens/home.dart';
import 'package:vess_oficial/screens/informations/about_app.dart';
import 'package:vess_oficial/screens/informations/what_is_vess.dart';
import 'package:vess_oficial/screens/onBoarding/recommendation_screen.dart';
import 'package:vess_oficial/screens/tutorials/equipments.dart';
import 'package:vess_oficial/screens/tutorials/grade_assignment.dart';
import 'package:vess_oficial/screens/tutorials/sample_extraction.dart';
import 'package:vess_oficial/screens/tutorials/sample_fragmentation.dart';
import 'package:vess_oficial/screens/tutorials/when_to_sample.dart';
import 'package:vess_oficial/screens/tutorials/where_to_sample.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/recommendation',
      routes: {
        //Tutorial screen
        '/recommendation': (context) => Recommendation(),
        //Main screen
        '/': (context) => Home(),
        //Tutorial screens
        '/equipments': (context) => Equipments(),
        '/when_to_sample': (context) => WhenToSample(),
        '/where_to_sample': (context) => WhereToSample(),
        '/sample_extraction': (context) => SampleExtraction(),
        '/sample_fragmentation': (context) => SampleFragmentation(),
        '/grade_assignment': (context) => GradeAssignment(),
        //Evaluate screens
        '/1_layer': (context) => EvaluateOneLayer(),
        '/2_layer': (context) => EvaluateTwoLayer(),
        '/3_layer': (context) => EvaluateThreeLayer(),
        '/4_layer': (context) => EvaluateFourLayer(),
        '/5_layer': (context) => EvaluateFiveLayer(),
        //Footer labels
        '/what_is_vess': (context) => WhatIsVess(),
        '/about_app': (context) => AboutApp(),
      },
    );
  }
}
