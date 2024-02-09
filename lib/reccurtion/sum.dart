void main(){
  int num=5;
  int result=sumofNaturalNumber(num);
  print("the sum of the 5 =$result");
}

int sumofNaturalNumber(int num){
  if(num==1){
    return 1;
  }else{
    return num+(sumofNaturalNumber(num-1));
  }
}
