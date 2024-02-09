void main() {
  var nums = [2, 8, 7, 6, 1, 15, 4, 9, 3];
  var result = insertionSort(nums);
  print(result);
}

//to sort using insertion sort.
insertionSort(nums) {
  for (int i = 1; i < nums.length; i++) {
    int temp = nums[i];
    int j = i - 1;
    while (j >= 0 && nums[j] >= temp) {
      nums[j + 1] = nums[j];
      j--;
    }
    nums[j + 1] = temp;
  }

  return nums;
}
