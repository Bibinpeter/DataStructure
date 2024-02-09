void main() {
  List<int> nums = [4,2,8,7,33,99,45,35];
  bubbleSort(nums);
  print(nums);
}

// to sort using bubble sort
void bubbleSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length-1; j++) {
      if (array[j]>array[j+1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}