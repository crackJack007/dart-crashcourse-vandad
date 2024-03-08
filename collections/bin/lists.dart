void main() {
  /*
  * Collections are set of values which are bundled together.
  * */
  List<String> names = ['Anantha', 'Bheema', 'Shreya', 'Dhruva'];
  List<int> numbers = [1, 2, 3, 4];
  print(names[2]);
  print('--------------------------------------');

  var nameReversed = [];
  for (int i = names.length - 1; i >= 0; i--) {
    // var valueAtIndex = random[i];
    // randomReversed.add(valueAtIndex);
    print(names[i]);
  }
  print(nameReversed);

  print('--------------------------------------');
  var tryingWhere = names.where((String value) => value.contains('B'));
  print(tryingWhere);

  print('--------------------------------------');

  print(names.where((String name) => name.startsWith('A')).toList());

  print('--------------------------------------');

  var mappingNames = names.map((str) => str + " " + str);
  print(mappingNames);

/*what does map function does here.
* It takes one item from the list names pass that to str and does what is mentioned in return function. Thats what the map does.
* This is the the most important function associated with lists.
**/
  print('--------------------------------------');

  int sumOfNumbers = sum(numbers);
  print(sumOfNumbers);

// there is another way of doing this using fold.
  int sumOfNumbersUsingFold =
      numbers.fold(0, (previousValue, element) => previousValue + element);
  print(sumOfNumbersUsingFold);

  // fold allows us to produce one value by combining the entire list.  Let us use fold using String
  
  var usingFoldForString = names.fold(0, (previousValue, str) => previousValue + str.length);
  print(usingFoldForString);

  // lets convert names list into Uppercase

  var namesToUpperCaseList = [];
  for(var name in names){
    name = name.toUpperCase();
    namesToUpperCaseList.add(name);
  }
  print(namesToUpperCaseList);

  var result = names.fold('', (previousValue, element) => '$previousValue  ${element.toUpperCase()}');
  print(result.runtimeType);


  print('--------------------------------------');

}

// If we look at the function below i.e. returnNameFromList does excatly the same as where function.
bool returnNameFromList(String value) {
  return value.startsWith('A');
}

int sum(List<int> numbers) {
  int count = 0;
  for (int number in numbers) {
    count = count + number;
  }
  return count;
}
