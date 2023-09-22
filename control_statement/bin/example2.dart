// recurssion and closures

void main(List<String> args) {
  print(power(3, 2));
}

int power(int base, int exponent) {
  if (exponent == 1) {
    return 1;
  } else {
    return base * power(base, exponent - 1);
  }
}
