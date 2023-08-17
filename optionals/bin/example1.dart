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

  ///  Null Check Operator (!) - I dont care whether the variables is null or not, I want to force read it.
  /// (!) says names is non-null and selects the property add unles names is null. If it is the program will crash.
  names!.add('Foo');

  String? lastName = 'Sathish';

  void changeLastName() {
    lastName = 'Mangesh';
  }

  changeLastName();

  if (lastName?.contains('Umesh') ?? false) {
    print('Last Name contains Umesh');
  }

  if (lastName?.contains('Mangesh') == true) {
    print('This method is not advised compared to above');
  }

  // watch optionals Extending optional Types
}
