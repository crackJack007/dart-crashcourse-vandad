import 'dart:io';

void main(List<String> args) {

    print('Arguement: $args');

  var list = [1, 2, 3];
  list.removeAt(0);

  print(list);

  // invalid code
  // name = 'Hello';

  print('Enter your name');
  String name = stdin.readLineSync()!;
  stdout.write('The name entered is $name \n');

  print('Enter your spouse Name');
  String? spouseName = stdin.readLineSync();
  stdout.write('$name\'s Wife Name is $spouseName');
}

/// what is a keyword?
/// It is a special word reserved in a programming language.

///  what is const and final?
///  They are variables both used for declaring constants. Except that final is run time constant where as
///  const is compile time const.
/// simply put: data is not mutable after it is created.
///
/// const avoids two kind of modifications
///  1) assigning a new value to that variable such as list = ['Hello'];
///  2) modifications to that value itself for example  list.removeAt(0); ERROR: cannot remove from an unmodifiable list
/// although point 2 is compilable but throws an exception at runtime.
///
/// what is a variable?
/// A variable is a named storage location in a computer's memory that is used to store data during the execution of a program
/// simply put: a variable can't be a constant but a constant can be a variable.
