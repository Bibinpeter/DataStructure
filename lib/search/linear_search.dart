 void main(){
  List<int> arr=[10,32,34,32,43];
  int x=32;
  int result=linearsearch(arr, x);
  print("the index value of: $x= $result");
 }


 linearsearch(List<int> arr,int x){
  for(int i=0;i<arr.length;i++){
    if (arr[i]==x){
      return i;
    }
  }
 }