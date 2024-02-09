 // ignore_for_file: file_names
void main() {
  DoubleLinkedList newDll = DoubleLinkedList();
  newDll.addNode(1);
  newDll.addNode(2);
  newDll.addNode(3);
  newDll.addNode(4);
  //newDll.insert(1,699);
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
  
  void delete(int data) {
    Node?current= head;
    Node? prev;
    Node? trailing;
     while(current!=null&& current.data!=data){
          prev=current;
          current=current.next;
          trailing=current?.next;
     }
     if(current==null){
      return;
     }
     else if(current==head){
      head=current.next;
     }
     else if(current==tail){
      tail=tail?.prev;
      tail?.prev=null;
     }
     prev?.next=current.next;
     trailing?.next=current.next;
  }
 
}