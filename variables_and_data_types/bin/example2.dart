void main(List<String> args) {
  final list = [1, 2, 3, 4];
  // list = [1, 2, 3, 4, 5]; // cannot assign a new value
  list.removeAt(0); // this operation is allowed in final
}

/// final keywords allows modifications of the value in mutable objects such as collections (lists, set and Map).
/// what is compile time?
///  source code is converted into executable code
/// 
/// what is runtime ?
/// the executable code starts running