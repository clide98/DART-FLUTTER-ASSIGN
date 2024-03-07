//parameter no return
int add(int a, int b) {
  var total;
  total = a + b;
  return total;
}

int subtract(int a, int b) {
  return a - b;
}

int multiply(int a, int b) {
  return a * b;
}

num divide(num a, num b) {
  if (b != 0) {
    return a / b;
  } else {
    throw ArgumentError("Cannot divide by zero");
  }
}

String greetings(String str) {
  String greet = "Welcome";
  return greet;
}

dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    return null; // Return null if the list is empty
  }
}

// Test the add function
void main() {
  var total = add(2, 3);
  print("Total sum: $total");
  add(2, 3);

  // Test the subtractfunction
  int result = subtract(10, 3);
  print("The difference between 10 and 3 is: $result");

  // Test the multiply function
  int equal = multiply(4, 6);
  print("The product of 4 and 6 is: $equal");

  // Test the divideTwo function
  try {
    num result = divide(10, 0);
    print("The division of 15 and 3 is: $result");
  } catch (e) {
    print("Syntaxerror: ${e.toString()}");
  }

  // Test the string greetings function
  print("Hello, world! My name is Clyde");

  // Test the getFirstElement function
  List<int> numbers = [1, 2, 3, 4, 5];
  dynamic firstElement = getFirstElement(numbers);
  print("The first element of the list is: $firstElement");
}
