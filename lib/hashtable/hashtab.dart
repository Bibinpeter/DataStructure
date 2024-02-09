void main() {
  HashTable table = HashTable(11);
  table.set('AB', 'Joyal');

  print(table.get('AB'));
  table.display();
}
class HashNode {
  late String key;
  late dynamic value;
  HashNode? next;

  HashNode(this.key, this.value);
}

class HashTable {
  List<HashNode>? bucketArray;
  late int size;

  HashTable(this.size) {
    bucketArray = List<HashNode>.filled(size, HashNode('', '' as dynamic));
  }

  int hash(String key) { 
    int index = 0;
    for (int i = 0; i < key.length; i++) {
      index += key.codeUnitAt(i);
    }
    return index % size;
  }

  dynamic get(String key) {
    int index = hash(key);
    HashNode? temp = bucketArray![index];
    while (temp != null) {
      if (temp.key == key) {
        return temp.value;
      }
      temp = temp.next;
    }
    return 'Value not found';
  }

  void set(String key, dynamic value) {
    int index = hash(key);
    HashNode? temp = bucketArray![index];
    while (temp != null) {
      if (temp.key == key) {
        temp.value = value;
        return;
      }
      temp = temp.next;
    }
    HashNode? newNode = HashNode(key, value);
    newNode.next = bucketArray![index];
    bucketArray![index] = newNode;
  }

  //

  display() {
    for (var value in bucketArray!) {
      HashNode? current = value;
      while (current != null) {
        print('${current.key}: ${current.value} ');
        current = current.next;
      }
    }
  }
}

