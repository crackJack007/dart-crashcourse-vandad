void main(List<String> args) {
  /// here we talk about late keyword.
  /// late variables are only assigned when they are used.
  late final int number = 10;
  print(number);

  /// late variables are initilized when they are used.
  /// let us take an example to explain this.
  final yourValue = getValue();
  print('This is it');
  print(yourValue);

  /// Now the flow for this is
  ///  1) yourValue is assigned with getValue(); and now the flow gets into getValue() function
  ///  2) We are here gets printed
  ///  3) 10 is assigned to getValue
  ///  4) This is it gets printed
  ///  5) your value is printed
  ///
  /// when you assign late keyword to final yourValue = getValue(); the operation flow goes like this
  /// 1) late final yourValue  = getValue(); is read but not initialized
  /// 4
  /// 3) again the flow goes into 1st line and it gets into the function now.
  /// 2
  /// 5
  /// as soon as the dart reads first line it keeps in mind and moves forward and only when yourValue is used then dart calls getValue functions once.
  /// next time you call print(yourValue) then dart directly prints yourValue
  ///
  /// In general late variables are only initialized when they are first used.
  ///
  /// analysis.options.yaml file has linter rules where you can manually add the rules you wanted.
}

int getValue() {
  print('We are here');
  return 10;
}
