void main() {
  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);

  print("Reversed String: $reversedString");
}

class Stack {
  final List<String> _items = [];

  void push(String value) => _items.add(value);

  String pop() => _items.isNotEmpty ? _items.removeLast() : "";

  bool get isEmpty => _items.isEmpty;

  void display() {}
}

String reverseString(String value) {
  Stack stack = Stack();

  for (int i = 0; i < value.length; i++) {
    stack.push(value[i]);
  }

  String reversed = "";
  while (!stack.isEmpty) {
    reversed += stack.pop();
  }

  return reversed;
}
