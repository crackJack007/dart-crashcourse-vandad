void main(List<String> args) {
  print('Before');
  late String getName = provideName();
  print('After');
  print(getName);

  Person person1 = Person();
  print(person1.age);
  // print(person1.description);

  /// Lets talk about late final.
  /// late variable allows multiple assignments unless they are late final.
  late String mobile = 'Google';
  mobile = 'Samsung';
  print(mobile);

  late final laptop = 'Apple';
  // laptop = 'Windows'; // cant do this.

  /// If  you make a variable late inside a class then you need not to have a constructor. Otherwise if no late and no constructor then compiler shows error.
  /// If you re-assign a late variable with normal variable then it is going to get called immediately. Like dart doesnt really wait for the late variable
  /// to be used because it is used when you re-assign it with normal variable.
}

String provideName() {
  print('This is printed');
  return 'Table Tennis';
}

class Person {
  late String description1 = heavyCalculationOfDescription();
  final int age;
  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    return 'wohohoho';
  }
}
