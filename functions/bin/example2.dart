/// Functions as First class Citizens
/// So, what are first class functions.
/// Functions in dart can be passed to another functions. Dart is capable of determing a functions as data type.
/// Any programming language which understands the datatype of function then it allows functions to be first class citizens.

void main(List<String> args) {
  final result = compute(add, multiply);
  print(result);
  final result2 = performOperation(5, 2, (a, b) => a + b);
  print(result2);
}

int performOperation(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

int add([int a = 10, int b = 5]) => a + b;
int multiply([int a = 10, int b = 5]) => a * b;

int compute(add, multiply) {
  // print(add);
  // print(multiply);
  /// the above two prints returns as Closure: [int, int]) => int from Function 'add': static.
  return add() + multiply();
}
