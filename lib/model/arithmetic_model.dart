class ArithmeticModel {
  final int firstNumber;
  final int secondNumber;


  ArithmeticModel({
    required this.firstNumber,
    required this.secondNumber
  });

  int add(){
    return firstNumber + secondNumber;
  }
}