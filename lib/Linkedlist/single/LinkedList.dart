  
void main() {
  SingleLinkedList newSingleLinkedList = SingleLinkedList();
  newSingleLinkedList.addNode(10);
  newSingleLinkedList.addNode(4);
  newSingleLinkedList.addNode(1);
  newSingleLinkedList.addNode(9);
  newSingleLinkedList.addNode(2);
  newSingleLinkedList.display();
   
  print('----------------');
  newSingleLinkedList.display();
}

class Node {
  int? data;
  Node? next;
  Node(int this.data);
}

class SingleLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode =  Node(data);
    Node? current = head;
    if (current == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

// to display the list of singlelinked lists
  void display() {
    Node? current = head;
    if (current == null) {
      print('The list is null');
      return;
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}