import 'package:calculator_application/models/model.dart';

class CalculatorController {
  CalculatorController _model = CalculatorModel();

  void add(double num1, double num2) {
    _model.add(num1, num2);
  }

  void subtract(double num1, double num2) {
    _model.subtract(num1, num2);
  }

  void multiply(double num1, double num2) {
    _model.multiply(num1, num2);
  }

  void divide(double num1, double num2) {
    _model.divide(num1, num2);
  }

  double get result => _model.result;
}
