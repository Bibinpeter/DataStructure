// ignore: file_names
// ignore: file_names
void main() {
  DoubleLinkedList newDll = DoubleLinkedList();
  newDll.addNode(1);
  newDll.addNode(2);
  newDll.addNode(3);
  newDll.addNode(4);
  // newDll.insert(1,699);
  newDll.delete(3);
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

    void delete(int data) {
    Node? current =head;
    Node? prev;
    Node? trailing;
    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
      trailing = current?.next;
    }
    // if the list is empty
    if (current == null) {
      return;
    }
    // if the value to be deleted is at the head
    if (current == head) {
      head = current.next;
      prev?.next = null;
    }
    // if the value to be deleted is at the tail
    if (current == tail) {
      tail = prev;
      tail?.next = null;
    }
    // if the value to be deleted is not from tail or head and its from the middle of the list;
    prev?.next = current.next;
    trailing?.prev = current.prev;
  }

}