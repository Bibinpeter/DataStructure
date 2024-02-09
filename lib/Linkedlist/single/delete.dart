
void main() {
  SingleLinkedList newSingleLinkedList = SingleLinkedList();
  newSingleLinkedList.addNode(1);
  newSingleLinkedList.addNode(2);
  newSingleLinkedList.addNode(3);
  newSingleLinkedList.addNode(4);
  newSingleLinkedList.addNode(5);
newSingleLinkedList.delete(2);
  newSingleLinkedList.display();
   
}

class Node{
  int? data;
  Node? next;
  Node(int this.data);
}

class SingleLinkedList{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node newnode =Node(data);
    if(head==null){
      head=newnode;
    }
    else
    {
      tail?.next=newnode;
    }
    tail=newnode;
  }
  
  void display() { 
    Node? current=head;
    if(current==null){
      print("the list is empty");
      return;
    }
    while(current!=null) {
        print(current.data);
    current=current.next;
    }
  }
  
  void delete(int data) {
   Node? current= head;
   Node? previous;
   while (current!=null && current.data!=data){
    previous=current;
    current=current.next;
  }
  if (current==null){
     return;
  }
   else if(head==current){
    head=current.next;
    previous?.next=null;
    return;
   }
   else if(tail==current){ 
   tail=previous;
   previous?.next=null;
   }

   previous?.next=current.next;
  
}
}