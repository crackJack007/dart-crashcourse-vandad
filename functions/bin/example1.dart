void main(List<String> args) {
  something();
  something(name: 'Batman');
  // something(name: null);
  makeUpperCase('String');
  makeUpperCase();
}

/// Non-optional named parameters with default values

void something({String name = 'Foo Bar'}) {
  print('Wre have a name called : $name');
}

/// required named parameters cannot have a default value
/// void something({required String name = 'Foo Bar}); This will throw error
/// positonal parameters always have to be passed in order, they dont have names associated with them at call site, they are
/// always required and they cannot have default values.

/// If you want a default values on positional parameters then you need to use [] as shown below
void makeUpperCase([String name = 'Ramesh']) {
  print(name.toUpperCase());
}

/// Functions with fat arrow doesnt need a keyword as return. 
