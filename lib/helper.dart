class Helper {
  static int? findMaxValue(List<int> a) {
    if (a.isEmpty) {
      return null;
    }

    int maxValue = a[0];

    for (int i = 1; i < a.length; i++) {
      if (a[i] > maxValue) {
        maxValue = a[i];
      }
    }

    return maxValue;
  }

  static int? findMaxValueDivideAndConquer(List<int> a) {
    int slices = 3;

    if (a.isEmpty) {
      return null;
    }

    if (a.length == 1) {
      return a[0];
    }

    if (a.length == slices) {
      if (a[0] > a[1]) {
        return a[0];
      } else {
        return a[1];
      }
    }

    int mid = (a.length / slices).floor();

    int leftMax = Helper.findMaxValueDivideAndConquer(a.sublist(0, mid + 1))!;
    int rightMax =
        Helper.findMaxValueDivideAndConquer(a.sublist(mid, a.length - 1))!;

    if (leftMax > rightMax) {
      return leftMax;
    } else {
      return rightMax;
    }
  }
}
