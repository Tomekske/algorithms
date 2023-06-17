import 'package:algorithms/sort.dart';
import 'package:test/test.dart';

void main() {
  group('Bubble Sort', () {
    test('Sorts an array of integers in ascending order', () {
      final array = [5, 3, 1, 4, 2];
      Sort.bubbleSort(array);
      expect(array, equals([1, 2, 3, 4, 5]));
    });

    test('Handles an empty array', () {
      List<int> array = [];
      Sort.bubbleSort(array);
      expect(array, equals([]));
    });

    test('Sorts an array with duplicate values', () {
      final array = [4, 2, 5, 1, 3, 2];
      Sort.bubbleSort(array);
      expect(array, equals([1, 2, 2, 3, 4, 5]));
    });

    test('Sorts an already sorted array', () {
      final array = [1, 2, 3, 4, 5];
      Sort.bubbleSort(array);
      expect(array, equals([1, 2, 3, 4, 5]));
    });
  });

  group('Merge Sort', () {
    test('Sorts an array of integers in ascending order', () {
      final array = [5, 3, 1, 4, 2];
      final sorted = Sort.mergeSort(array);
      expect(sorted, equals([1, 2, 3, 4, 5]));
    });

    test('Handles an empty array', () {
      List<int> array = [];
      final sorted = Sort.mergeSort(array);
      expect(sorted, equals([]));
    });

    test('Sorts an array with duplicate values', () {
      final array = [4, 2, 5, 1, 3, 2];
      final sorted = Sort.mergeSort(array);
      expect(sorted, equals([1, 2, 2, 3, 4, 5]));
    });

    test('Sorts an already sorted array', () {
      final array = [1, 2, 3, 4, 5];
      final sorted = Sort.mergeSort(array);
      expect(sorted, equals([1, 2, 3, 4, 5]));
    });
  });
}
