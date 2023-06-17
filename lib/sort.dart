class Sort {
  static List<int> insertion(List<int> a) {
    int length = a.length;

    for (int i = 1; i < length; i++) {
      int key = a[i];
      int j = i - 1;

      while (j >= 0 && a[j] > key) {
        a[j + 1] = a[j];
        j = j - 1;
      }

      a[j + 1] = key;
    }

    return a;
  }

  static List<int> bubbleSort(List<int> a) {
    int length = a.length;

    for (int i = 0; i < length; i++) {
      for (int j = 0; j < length - 1; j++) {
        if (a[j] > a[j + 1]) {
          int temp = a[j];
          a[j] = a[j + 1];
          a[j + 1] = temp;
        }
      }
    }

    return a;
  }

  static List<int> merge(List<int> left, List<int> right) {
    List<int> merged = [];
    int i = 0;
    int j = 0;

    // Conquer step
    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        merged.add(left[i]);
        i++;
      } else {
        merged.add(right[j]);
        j++;
      }
    }

    while (i < left.length) {
      merged.add(left[i]);
      i++;
    }

    while (j < right.length) {
      merged.add(right[j]);
      j++;
    }

    return merged;
  }

  static List<int> mergeSort(List<int> a) {
    int length = a.length;

    if (length <= 1) {
      return a;
    }

    int mid = (length / 2).floor();
    List<int> left = mergeSort(a.sublist(0, mid));
    List<int> right = mergeSort(a.sublist(mid, length));

    return merge(left, right);
  }
}
