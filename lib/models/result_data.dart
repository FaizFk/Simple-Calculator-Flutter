import 'package:flutter/cupertino.dart';

class ResultData with ChangeNotifier {
  String _answer = '';
  String _history = '';
  String _expression = '';

  void appendExpression(String symbol) {
    _expression += symbol;
    print(expression);
    notifyListeners();
  }

  void clearExpression() {
    _expression = '';
    notifyListeners();
  }

  void _findAnswer() {
    for (int i = 0; i < _expression.length; i++) {
      int firstNum = 0;
      int secondNum = 0;
      bool hasNum1 = false;
      bool hasNum2 = false;
      int result;
      String symbol = _expression[i];
    }
  }

  String get expression {
    return _expression;
  }
}
