// sets are similar to lists without duplicates.

void main(){
  List<int> numbers = [1,2,3,4,5,6,7,1,2,3];
  List<int> numbers1 = [];
  for(var number in numbers){
    int matchNumber = 0;
    if(number != matchNumber && !numbers1.contains(number)){
      numbers1.add(number);
    }
    number = matchNumber;
  }
  print(numbers1);
}