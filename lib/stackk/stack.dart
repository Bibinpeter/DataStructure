void main() {
  var stack = Stack();
  stack.pushData("b");
  stack.pushData("i");
  stack.pushData("b");
  stack.pushData("i");
  stack.pushData("n");

  stack.display();
}

class Node {
  // ignore: prefer_typing_uninitialized_variables
  var data;
  Node? next;
  Node(var this.data);
}

class Stack {
  Node? top;
  void pushData(var data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
