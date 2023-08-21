/// Returning Functions from Functions

void main(List<String> args) {
  print(doSomething(3, 2)); // This returns in closure
  print(doSomething(3, 2)()); // This doesnt return in closure
}

int Function() doSomething(int lhs, int rhs) {
  return () => lhs + rhs;
}
