
void main() {
  SingleLinkedList newSingleLinkedList = SingleLinkedList();
  newSingleLinkedList.addNode(1);
  newSingleLinkedList.addNode(2);
  newSingleLinkedList.addNode(3);
  newSingleLinkedList.addNode(4);
  newSingleLinkedList.addNode(5);
  newSingleLinkedList.addNode(6);
  
  newSingleLinkedList.replace(999,6);
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
    Node newnode = Node(data);
    if (head == null) {
      head=newnode;
    } else
     {
      tail?.next = newnode;
    }
    tail = newnode;
  }
  
  void display() {
    Node? current =head;
    if(current==null){
      print("the list is empty");
    }
    while(current!=null){
      print(current.data);
     current= current.next;
    }
  }

void replace(int data,int target){
    Node? current = head;
    Node? previous;
    Node newnode=Node(data);
    while(current!=null&&current.data!=target){
        previous=current;
        current=current.next;
    }
    if(current==null){
      return;
    }
  if(current==head){
     head=newnode;
   newnode.next=current.next;
   
   return;
    }
    else if(current==tail){
       tail=newnode;
       previous?.next=newnode;
     
      return;
    }
   previous?.next = newnode;
    newnode.next= current.next; 
     
  }
}
