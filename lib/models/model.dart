class CalculatorModel {
  double _firstNumber;
  double _secondNumber;
  double _result;

  double get firstNumber => _firstNumber;
  double get secondNumber => _secondNumber;
  double get result => _result;

  set firstNumber(double value) {
    _firstNumber = value;
  }

  set secondNumber(double value) {
    _secondNumber = value;
  }

  void add() {
    _result = _firstNumber + _secondNumber;
  }

  void subtract() {
    _result = _firstNumber - _secondNumber;
  }

  void multiply() {
    _result = _firstNumber * _secondNumber;
  }

  void divide() {
    _result = _firstNumber / _secondNumber;
  }
}
