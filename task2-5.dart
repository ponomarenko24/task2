import 'dart:io';

void main() {
  print("Input first number:");
  double firstValue = inputInt();
  print("Input second number:");
  double secondValue = inputInt();
  print("Input operator");
  print(calculate(firstValue, secondValue));
}

double? calculate(double num1, double num2) {
  while (true) {
    String? operation = stdin.readLineSync();
    switch (operation) {
      case '+':
        return (num1 + num2);
      case '-':
        return (num1 - num2);
      case '*':
        return (num1 * num2);
      case '/':
        return num2 != 0 ? (num1 / num2) : null;
      default:
        print('Input correct operator');
        continue;
    }
  }
}

double inputInt() {
  while (true) {
    double? input = double.tryParse(stdin.readLineSync() ?? '');
    if (input != null) {
      return input;
    } else {
      print('Wrong value. Try again');
      continue;
    }
  }
}
