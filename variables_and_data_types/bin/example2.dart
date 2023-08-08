void main(List<String> args) {
  final list = [1, 2, 3, 4];
  // list = [1, 2, 3, 4, 5]; // cannot assign a new value
  list.removeAt(0); // this operation is allowed in final
}

/// what is final ?
/// final keyword can have data where you cannot assign a new value but the internal value can be modified during compile time
/// 
/// what is compile time?
///  source code is converted into executable code
/// 
/// what is runtime ?
/// the executable code starts running