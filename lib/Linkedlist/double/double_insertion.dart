// ignore: file_names
// ignore: file_names
void main() {
  DoubleLinkedList newDll = DoubleLinkedList();
  newDll.addNode(1);
  newDll.addNode(2);
  newDll.addNode(3);
  newDll.addNode(4);
  newDll.insert(4, 699);
  // newDll.delete(4);
  newDll.display();
}

class Node {
  int? data;
  Node? prev;
  Node? next;
  Node(int this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    Node? current = head;
    if (current == null) {
      print("the list is empty");
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void insert(int pos, int data) {
    Node? current = head;
    Node? previous;
    Node newNode = Node(data);
    while (current != null && current.data != pos) {
      previous = current;
      current = current.next;
    }
    if (current == null) {
      return;
    } else if (head == current) {
      head = newNode;
      newNode.next = current.next;
      return;
    } else if (tail == current) {
      previous?.next = newNode;
      tail = newNode;
      
      return;
    }
    previous?.next = newNode;
    newNode.next = current.next;
  }
}
