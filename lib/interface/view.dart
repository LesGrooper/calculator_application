import 'package:flutter/material.dart';
import 'package:calculator_application/controllers/controller.dart';

class CalculatorView extends StatefulWidget {
  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  String _result = '';

  final CalculatorController _controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Sederhana"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _number1Controller,
              decoration: InputDecoration(labelText: "Masukan Angka Pertama: "),
            ),
            SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              controller: _number2Controller,
              decoration: InputDecoration(labelText: "Masukan Angka Kedua: "),
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _onButtonPressed('+'),
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('-'),
                  child: Text('-'),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _onButtonPressed('*'),
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('/'),
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              _result,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onButtonPressed(String operator) {
    double num1 = double.tryParse(_number1Controller.text) ?? 0.0;
    double num2 = double.tryParse(_number2Controller.text) ?? 0.0;
    double result = _controller.calculate(operator, num1, num2);
    setState(() {
      _result = 'Hasil: $result';
    });
  }
}
