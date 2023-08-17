/// Avoid constructor initialization of late variables.
/// Late instance variables should not be initialized in the cons

void main(List<String> args) {
  final bheema = Person(name: 'Bheema');
  Person janeDoe = Person(name: 'Jane Doe');
  WrongImplementationOfFamilyMembers myFamily =
      WrongImplementationOfFamilyMembers(members: [bheema, janeDoe]);
}

class Person {
  final String name;
  Person({required this.name});
}

class WrongImplementationOfFamilyMembers {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamilyMembers({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members Count');
    return members.length;
  }
}
