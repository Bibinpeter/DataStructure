void main() {
  List list = [21, 12, 98, 56, 7, 34];
  quickSort(list, 0, list.length - 1);
  print(list);
}

void quickSort(List array, int first, int last) {
  if (first >= last) {
    return;
  }
  int pivot = first;
  int start = first + 1; 
  int end = last;

  while (start <= end) {
    if (array[start] > array[pivot] && array[end] < array[pivot]){ 
      int temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }
     //movement of the start pointer should be increasead = [start should be lesser than the piovt]
    if (array[start] <= array[pivot]) {
      start++;
    }
    //movement of the end pointer should be decreased =[end is greater than pivot]
    if (array[end] > array[pivot]) {
      end--;
    }

  }
  int temp = array[end];
  array[end] = array[pivot];
  array[pivot] = temp;

  quickSort(array, first, end - 1);
  quickSort(array, end + 1, last);
}
