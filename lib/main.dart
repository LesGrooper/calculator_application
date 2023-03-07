import 'package:flutter/material.dart';
import 'package:calculator_application/controllers/controller.dart';
import 'package:calculator_application/interface/view.dart';
import 'package:calculator_application/models/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Sederhana',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomePage(
        title: "Calculator Sederhana",
        model: CalculatorModel(),
        controller: CalculatorController(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
    required this.model,
    required this.controller,
  }) : super(key: key);

  final String title;
  final CalculatorModel model;
  final CalculatorController controller;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CalculatorView(
      title: widget.title,
      model: widget.model,
      controller: widget.controller,
    );
  }
}
