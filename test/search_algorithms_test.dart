import 'package:algorithms/search.dart';
import 'package:test/test.dart';

void main() {
  group('Linear Search Test', () {
    test('Number present in the list', () {
      List<int> numbers = [10, 20, 30, 40, 50];
      int target = 30;

      expect(Search.linearSearch(numbers, target), equals(true));
    });

    test('Number not present in the list', () {
      List<int> numbers = [10, 20, 30, 40, 50];
      int target = 60;

      expect(Search.linearSearch(numbers, target), equals(false));
    });

    test('Empty list', () {
      List<int> numbers = [];
      int target = 10;

      expect(Search.linearSearch(numbers, target), equals(false));
    });

    test('Number present in a list with duplicates', () {
      List<int> numbers = [10, 20, 30, 20, 40];
      int target = 20;

      expect(Search.linearSearch(numbers, target), equals(true));
    });

    test('Number present in a large list', () {
      List<int> numbers = List<int>.generate(1000000, (index) => index + 1);
      int target = 999999;

      expect(Search.linearSearch(numbers, target), equals(true));
    });
  });

  group('Binary Search Test', () {
    test('Number present in the list', () {
      List<int> numbers = [10, 20, 30, 40, 50];
      int target = 30;

      expect(Search.binarySearch(numbers, target), equals(true));
    });

    test('Number not present in the list', () {
      List<int> numbers = [10, 20, 30, 40, 50];
      int target = 60;

      expect(Search.binarySearch(numbers, target), equals(false));
    });

    test('Empty list', () {
      List<int> numbers = [];
      int target = 10;

      expect(Search.binarySearch(numbers, target), equals(false));
    });

    test('Number present in a list with duplicates', () {
      List<int> numbers = [10, 20, 30, 20, 40];
      int target = 20;

      expect(Search.binarySearch(numbers, target), equals(true));
    });

    test('Number present in a large list', () {
      List<int> numbers = List<int>.generate(1000000, (index) => index + 1);
      int target = 999999;

      expect(Search.binarySearch(numbers, target), equals(true));
    });
  });

  group('Jump Search Test', () {
    test('Number present in the list', () {
      List<int> numbers = [10, 20, 30, 40, 50];
      int target = 30;

      expect(Search.jumpSearch(numbers, target), equals(true));
    });

    test('Number not present in the list', () {
      List<int> numbers = [10, 20, 30, 40, 50];
      int target = 60;

      expect(Search.jumpSearch(numbers, target), equals(false));
    });

    test('Empty list', () {
      List<int> numbers = [];
      int target = 10;

      expect(Search.jumpSearch(numbers, target), equals(false));
    });

    test('Number present in a list with duplicates', () {
      List<int> numbers = [10, 20, 30, 20, 40];
      int target = 20;

      expect(Search.jumpSearch(numbers, target), equals(true));
    });

    test('Number present in a large list', () {
      List<int> numbers = List<int>.generate(1000000, (index) => index + 1);
      int target = 999999;

      expect(Search.jumpSearch(numbers, target), equals(true));
    });
  });
}
