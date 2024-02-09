void main() {
  Stack<int> stack = Stack<int>();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  print("Original Stack:");
  stack.printStack();

  stack.deleteMiddle();

  print("Stack after deleting middle element:");
  stack.printStack();
}
class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isNotEmpty) {
      return _items.removeLast();
    } else {
      throw StateError("Cannot pop from an empty stack");
    }
  }

  void deleteMiddle() {
    int middleIndex = _items.length ~/ 2;

    if (_items.length % 2 == 0) {
       
      middleIndex--;
    }
  
    for (int i = 0; i < middleIndex; i++) {
      
    }

   
    pop();

   
    for (int i = 0; i < middleIndex; i++) {
      push(pop());
    }
  }

  void printStack() {
    print(_items);
  }
}


