import 'dart:io';
import 'dart:math';
import 'dart:async';

class Calculator {
  double? num1;
  double? num2;
  double number1() {
    double num1 = double.parse(stdin.readLineSync()!);
    return num1;
  }

  double number2() {
    double num2 = double.parse(stdin.readLineSync()!);
    return num2;
  }

  void addition(double num1, double num2) {
    double sum;
    this.num1 = num1;
    this.num2 = num2;
    sum = num1 + num2;
    print("$num1 + $num2 = $sum");
  }

  void subtraction(double num1, double num2) {
    double sub;
    this.num1 = num1;
    this.num2 = num2;
    sub = num1 - num2;
    print("$num1 - $num2 = $sub");
  }

  void multiply(double num1, double num2) {
    double mul;
    this.num1 = num1;
    this.num2 = num2;
    mul = num1 * num2;
    print("$num1 * $num2 = $mul");
  }

  void division(double num1, double num2) {
    double div;
    this.num1 = num1;
    this.num2 = num2;
    if (num2 != 0) {
      div = num1 / num2;
      print("$num1 - $num2 = $div");
    } else {
      print("zero can not be a divisor.");
    }
  }
}

Future<void> executiondelay() async {
  Calculator calc = new Calculator();
  double number1 = calc.number1();
  double number2 = calc.number2();
  await Future.delayed(Duration(seconds: 5));
  calc.addition(number1, number2);
  calc.subtraction(number1, number2);
  calc.multiply(number1, number2);
  calc.division(number1, number2);
}

void main() {
  print("enter the two numbers.\n");
  executiondelay();
}
