/// Optionality in dart is the ability to have a value or not to have a value
///  in other words it is the ability of the variable to either contain a value to that variable or be equal to null.
///
///Optional datatypes of a variable are initialized to null

void main(List<String> args) {
  const String name =
      'Anantha'; // here a variable name contains a value 'Anantha'
  const String? name1 =
      null; // here the ?  is optionality which means that the variable can have a value or not.

  /// ??= This is the compound null aware compound assignment operator which takes the value of the right and assign it to left if and only if the left is null.
  /// ?? Takes the value of the right and put it to left only if left is null but unlike above it doesnt assign the value to the left. It would still be null in any case.

  String? someName;
  someName ?? 'New Name';
  print(someName);

  /// ?. This is null aware operator

  // print(name1.length); We cannot use this as the receiver can be null Hence,
  print(name1?.length);

  /// here is an example of what ?? can do
  String? nullName;
  print(nullName ?? 'John');

  var a = int.tryParse("1_6");
  print(a);

  /// incase of excpetions in converting String to integer values. int.parse() shows Format Exceptions where as int.tryParse() shows null.

  List<String>? names;
  names?.add('FOO');

  /// The above is dead code because null aware operator works like this. If names is not a null, only then invoke a function add to that. Here the names is null Hence dead code
  print(names);

  ///  Null assertion Operator (!) - I dont care whether the variables is null or not, I want to force read it.
  /// (!) says names is non-null and selects the property add unles names is null. If it is the program will crash.
  ///  (!) like said above this is forcing the dart to treat the expression as non nullable beacuse sometimes the flow of code tells us the expression cannot be null.
  /// If incase the expression is null then dart throws an exception
  /// assert - If the boolean expression in assert operator is true then the code continues otherwise it'll throw assertion error.
  names!.add('Foo');

  String? lastName = 'Sathish';

  void changeLastName() {
    lastName = 'Mangesh';
  }

  changeLastName();

  /// So what exactly is ?. operator - Its like telling dart like below.
  /// Hey, evaluate this expression if lastName is not null and if the lastName is null, thats okay, make it null but just dont throw an error.
  if (lastName?.contains('Umesh') ?? false) {
    print('Last Name contains Umesh');
  }

  if (lastName?.contains('Mangesh') == true) {
    print('This method is not advised compared to above');
  }

//   The two statements you provided are similar, but there is a subtle difference in how they work:

// if (lastName?.contains('Umesh') ?? false) { ... }
// This statement uses the null-aware operator ?. to safely access the contains method on the lastName object.
// If lastName is null, the entire expression evaluates to null. Then, the ?? operator provides a default value of false.
// So, if lastName is null or doesn't contain 'Umesh', the condition evaluates to false. If lastName is not null and contains 'Umesh', the condition evaluates to true.

// if (lastName?.contains('Mangesh') == true) { ... }
// This statement also uses the null-aware operator to safely access the contains method on lastName.
// However, it explicitly checks if the result of contains is equal to true. If lastName is null, the condition evaluates to false.
// If lastName is not null and contains 'Mangesh', the condition evaluates to true.

// In summary, both statements perform similar checks for the presence of a substring in lastName while handling potential null values.
// However, the first statement (?? false) ensures that if lastName is null, it evaluates to false directly, while the second statement explicitly checks if the result is equal to true.

// The first statement is more concise and idiomatic in many programming languages, and it directly produces a boolean result, making it easier to read and understand.
// Therefore, it is generally recommended to use the first statement for such checks in languages that support null-aware operators like Dart.

// watch optionals Extending optional Types
}
