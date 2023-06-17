import 'package:algorithms/data_structures/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack: push', () {
    test('Pushing an item onto an empty stack', () {
      final stack = Stack();
      stack.push(10);
      expect(stack.stack, [10]);
    });

    test('Pushing items onto a non-empty stack', () {
      var stack = Stack();
      stack.push(20);
      stack.push(30);
      stack.push(40);
      expect(stack.stack, [20, 30, 40]);
    });
  });

  group('Stack: pop', () {
    test('Popping an item from a non-empty stack', () {
      var stack = Stack();
      stack.push(10);
      stack.push(20);
      stack.push(30);

      expect(stack.pop(), equals(30));
      expect(stack.stack, [10, 20]);
    });

    test('Popping multiple items from a non-empty stack', () {
      var stack = Stack();
      stack.push(10);
      stack.push(20);
      stack.push(30);

      expect(stack.pop(), equals(30));

      stack.push(40);
      stack.push(50);
      stack.push(60);

      expect(stack.pop(), equals(60));

      expect(stack.stack, [10, 20, 40, 50]);
    });

    test('Popping item from an empty stack', () {
      var stack = Stack();

      expect(stack.pop(), null);
    });
  });

  group('Stack: peek', () {
    test('Peeking should return the top element without removing it', () {
      Stack stack = Stack();
      stack.push(10);
      stack.push(20);
      expect(stack.peek(), equals(20));
      expect(stack.size, equals(2));
    });

    test('Peeking at an empty stack should throw null', () {
      Stack stack = Stack();
      expect(stack.peek(), null);
    });
  });

  group('Stack: clear', () {
    test('Clearing a stack with elements should result in an empty stack', () {
      Stack stack = Stack();
      stack.push(10);
      stack.push(20);
      stack.push(30);

      stack.clear();
      expect(stack.size, equals(0));
    });

    test('Clearing an empty stack should not throw any error', () {
      Stack stack = Stack();

      stack.clear();
      expect(stack.size, equals(0));
    });
  });
}
