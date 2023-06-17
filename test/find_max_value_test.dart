import 'package:algorithms/helper.dart';
import 'package:test/test.dart';

void main() {
  group('findMaxValue', () {
    test('Returns the maximum value in an array', () {
      final array = [1, 3, 5, 2, 4];
      expect(Helper.findMaxValue(array), equals(5));
    });

    test('Returns the maximum value in an array with negative numbers', () {
      final array = [-1, -3, -5, -2, -4];
      expect(Helper.findMaxValue(array), equals(-1));
    });

    test('Returns the maximum value in an array with a single element', () {
      final array = [10];
      expect(Helper.findMaxValue(array), equals(10));
    });

    test(
        'Returns the maximum value in an array with all elements being the same',
        () {
      final array = [0, 0, 0, 0, 0];
      expect(Helper.findMaxValue(array), equals(0));
    });

    test('Returns appropriate message for an empty array', () {
      List<int> array = [];
      expect(Helper.findMaxValue(array), null);
    });
  });

  group('findMaxValue using divide and conquer technique', () {
    test('Returns the maximum value in an array', () {
      final array = [1, 3, 5, 2, 4];
      expect(Helper.findMaxValueDivideAndConquer(array), equals(5));
    });

    test('Returns the maximum value in an array with negative numbers', () {
      final array = [-1, -3, -5, -2, -4];
      expect(Helper.findMaxValueDivideAndConquer(array), equals(-1));
    });

    test('Returns the maximum value in an array with a single element', () {
      final array = [10];
      expect(Helper.findMaxValueDivideAndConquer(array), equals(10));
    });

    test(
        'Returns the maximum value in an array with all elements being the same',
        () {
      final array = [0, 0, 0, 0, 0];
      expect(Helper.findMaxValueDivideAndConquer(array), equals(0));
    });

    test('Returns appropriate message for an empty array', () {
      List<int> array = [];
      expect(Helper.findMaxValueDivideAndConquer(array), null);
    });
  });
}
