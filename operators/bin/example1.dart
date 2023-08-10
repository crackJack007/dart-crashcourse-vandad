/// Operators are simple functions
void main(List<String> args) {
  const age1 = 30.23;
  const age2 = 30;
  print(age1 ~/
      age2); // this is truncating operator (~) which always returns integer value.

  /// There are four types of operators and they are Unary Prefix, Unary Postfix, Binary Infix, Compound assignment

  /// Unary Prefix - This operates on one value and operates behind that value

  int age = 22;
  int age3 = --age;
  print(age);
  print(age3);

  /// along with age3 being 21, initial value of age that is 30 also changes to 21.

  /// Unary bitwise complement prefix operator
  print(~1);
}
