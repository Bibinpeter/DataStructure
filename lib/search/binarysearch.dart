
void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int result = binarySearch(array, 8);
  print(result);
}

 binarySearch(List<int> array, int target) {
  int start = 0, end = array.length - 1;
  while (start <= end) {
    int mid = start + (end - start)~/2;
    if (array[mid] == target) return mid;
    array[mid] > target ? end = mid - 1 : start = mid + 1;
  }
 
}