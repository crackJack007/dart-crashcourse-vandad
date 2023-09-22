/// The thing about if, if-elseif, if-else statements are once the condition evaluates to true, dart gets out the if statements.

void main(List<String> args) {
  const names = ['Mercury', 'Venus', 'Earth', 'Mars'];

  /// print all the names backwards
  // print(names.length);
  // print('name: ${names[3]}');
  // for (var i = names.length - 1; i >= 0; i--) {
  //   print(names[i]);
  // }

  /// print 2nd and 4th index
  for (var i = 1; i < names.length; i += 2) {
    print(names[i]);
  }

  /// Continue: this keyword bring back the execution again to the loop without executing further statements. CONTINUE THE LOOP
  /// break; this keyword breaks out of the loop. BREAK THE LOOP

  /// Example of Continue statement
  for (var name in names) {
    if (name.startsWith('M')) {
      continue;
    }
    print('Name without letter \'M\': $name');
  }

  /// Example of break statement
  for (var name in names) {
    if (name.startsWith('Earth')) {
      print('Name: $name');
      break; // as soon as Earth arrives the the name gets printed and the loop is broken without printing anything in the loop. 
    }
    print('what are you printing: $name');
  }
}
