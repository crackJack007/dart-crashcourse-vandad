void main(List<String> args) {
  const list = [1, 2, 3];
  list.removeAt(0);

  print(list);

  // invalid code
  // name = 'Hello';
}

/// what is a keyword?
/// It is a special word reserved in a programming language.

///  what is const?
/// It is a data that you specify while writing your code and it will then be held inside the memory, wherever dart saves it and we wont 
/// be able to modify that data at all after it is created. 
/// simply put: data is not mutable after it is created. 
/// 
/// const avoids two kind of modifications 
///  1) assigning a new value to that variable such as list = ['Hello'];
///  2) modifications to that value itself for example  list.removeAt(0); ERROR: cannot remove from an unmodifiable list 
/// although point 2 is compliable but throws an exception at runtime. 
/// 
/// what is a variable?
/// Its also a data but the meaning of variables is something which constantly changes or mutates
/// simply put: a variable can't be a constant but a constant can be a variable. 
