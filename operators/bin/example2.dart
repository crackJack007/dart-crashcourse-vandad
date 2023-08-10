/// unary Postfix Operator - This operates on one value and operates after that value.

void main(List<String> args) {
  int age = 30;
  int age2 = age++;
  print(age);
  print(age2);

  /// with above example age value is changed but age2 isnt changed.
  ///
  /// Lets talk about binary infix operators
  /// What is binary infix operator?
  /// This is an operator which sits inbetween and modifies the end result
  ///
  int totalAge = age + 20; // '+' here is binary infix operator
  int reminderAge = age % 20;
  print(reminderAge);
  int integerDivision = age ~/ 20;
  print(integerDivision);
  bool checkEqual = age == 20;
  print(checkEqual);

  /// bitwise operators
  print(age & 20); // bitwise AND 1&1=1, 0&1=0, 1&0=0, 0&0=0
  print(age | 20); // bitwise OR 1|1=1, 0|1=1, 1|0=1, 0|0=0
  print(age ^ 20); // bitwise XOR 1^1=0, 0^1=1, 1^0=1, 0^0=0

  print(age << 20); // bitwise leftshift
  print(age >> 20); //bitwise rightshift

  /// Now, lets take a look at compound assignment
  var myAge = 30;
  print(myAge += 2); // myAge = myAge + 2
  // print(myAge =+ 2); This is not allowed. Error -> Expected an identifier
  print(myAge &= 4);
}
