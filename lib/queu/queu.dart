void main() {
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.enqueue(7);
  queue.enqueue(8);
  queue.delete();
  queue.display();
}

class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class Queue {
  Node? front;
  Node? back;

  void enqueue(int data) {
    Node newNode = Node(data);
    if (back == null) {
      front = back = newNode;
    } else {
      back?.next = newNode;
      back = newNode;
    }
  }

  void delete() {
    if (front == null) {
      print("Empty");
      return;
    }
    front = front?.next;
   
  }

  void display() {  
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
