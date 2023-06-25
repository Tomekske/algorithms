import 'dart:math';

class Search {
  static bool linearSearch(List<int> a, int target) {
    for (int i = 0; i < a.length; i++) {
      if (a[i] == target) {
        return true;
      }
    }
    return false;
  }

  static bool binarySearch(List<int> a, int target) {
    int low = 0;
    int high = a.length - 1;

    while (low <= high) {
      // The ~/ operator in Dart performs integer division,
      // which discards the fractional part and returns the whole number quotient
      int mid = (low + high) ~/ 2;

      if (a[mid] == target) {
        return true;
      } else if (a[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return false;
  }

  static bool jumpSearch(List<int> a, int target) {
    if (a.isEmpty) {
      return false;
    }

    int n = a.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    // Finding the block where element is present (if it is present)
    while (a[min(step, n) - 1] < target) {
      prev = step;
      step += sqrt(n).toInt();

      if (prev >= n) {
        return false;
      }
    }

    // Perform linear search in the found block
    while (a[prev] < target) {
      prev += 1;

      if (prev == min(step, n)) {
        return false;
      }
    }

    if (a[prev] == target) {
      return true;
    }

    return false;
  }
}
