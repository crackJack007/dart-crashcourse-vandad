  void main(List<String> args) {
  // final age = 10;
  // const age2 = age; this is an invalid behaviour but the other way round is possible.
  const int age = 10;

  /// dart can infer its own datatypes except some strange case. otherwise below code would just do fine.
  int age1 = 10;
  const age2 = 10;
}

/// constant values cannot be assigned to final. In return final values can be assigned to constant. (or)
/// constant values cannot be assigned to non - constant values.
/// Simply Put: Constant value which is more accurate cannot be assigned to final which isnt when compared to constant.
