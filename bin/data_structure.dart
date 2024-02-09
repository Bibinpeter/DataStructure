 void main(){
  List<int> arr=[6,1,6,8,10,4,15,6,3,9,6];

  //count the occurence of the six
int countedsix=arr.where((element) => element==6).length;

//creating a new List with elements not equal to six
List<int> notsix=arr.where((element) => element!=6).toList();

notsix.addAll(List<int>.filled(countedsix, 6));
print(notsix);
 }