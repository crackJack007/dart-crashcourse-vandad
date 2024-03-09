void main(List<String> arguments) {
  // Reverse a String without using built in functions
  String name = 'Bheema';
  print(reverseString(name));

  // check if a String is palindrome
  checkPalindrome('tat');

  // count occurrences of a specific character in a String
  var occurances = checkOccurancesInAString('anantha', 'a');
  print(occurances);

  // Remove duplicates from a String
  var removingDuplicates = removeDuplicates('Anantha');
  print('New name after removing duplicates is  $removingDuplicates');
}

String reverseString(String inputString) {
  List<String> reverseListOfLetters = [];
  String reverseName = '';
  for (int i = inputString.length - 1; i >= 0; i--) {
    reverseListOfLetters.add(inputString[i]);
  }
  for (var n in reverseListOfLetters) {
    reverseName = '$reverseName$n';
  }
  return reverseName;
}

void checkPalindrome(String inputString) {
  List<String> reverseListOfLetters = [];
  String reverseName = '';
  for (int i = inputString.length - 1; i >= 0; i--) {
    reverseListOfLetters.add(inputString[i]);
  }
  for (var n in reverseListOfLetters) {
    reverseName = '$reverseName$n';
  }
  if (inputString == reverseName) {
    print(
        'The given String $inputString matches with $reverseName, hence it is a Palindrome');
  } else {
    print(
        'The given String $inputString does not match $reverseName, Therefore it is not a palindrome');
  }
}

int checkOccurancesInAString(String inputString, String inputLetter) {
  List<String> listOfLetters = [];
  int count = 0;
  for (int i = 0; i < inputString.length; i++) {
    listOfLetters.add(inputString[i]);
    if (inputString[i] == inputLetter) {
      count++;
    }
  }
  return count;
}

String removeDuplicates(String inputString) {
  List<String> listOfLetters = [];
  String newName = '';
  for (int i = 0; i < inputString.length; i++) {
    if (!listOfLetters.contains(inputString[i])) {
      listOfLetters.add(inputString[i]);
    }
  }
  for (var n in listOfLetters) {
    newName = '$newName$n';
  }
  return newName;
}
