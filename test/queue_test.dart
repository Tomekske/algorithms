import 'package:algorithms/data_structures/queue.dart';
import 'package:test/test.dart';

void main() {
  group('Queue: enqueue', () {
    test('Pushing an item onto an empty queue', () {
      final queue = Queue();

      queue.enqueue(10);

      expect(queue.queue, [10]);
    });

    test('Pushing items onto a non-empty queue', () {
      final queue = Queue();

      queue.enqueue(20);
      queue.enqueue(30);
      queue.enqueue(40);

      expect(queue.queue, [20, 30, 40]);
    });
  });

  group('Queue: dequeue', () {
    test('Popping an item from a non-empty queue', () {
      final queue = Queue();

      queue.enqueue(10);
      queue.enqueue(20);
      queue.enqueue(30);

      expect(queue.dequeue(), equals(10));
      expect(queue.queue, [20, 30]);
    });

    test('Popping multiple items from a non-empty queue', () {
      final queue = Queue();

      queue.enqueue(10);
      queue.enqueue(20);
      queue.enqueue(30);

      expect(queue.dequeue(), equals(10));

      queue.enqueue(40);
      queue.enqueue(50);
      queue.enqueue(60);

      expect(queue.dequeue(), equals(20));
      expect(queue.queue, [30, 40, 50, 60]);
    });

    test('Popping item from an empty queue', () {
      final queue = Queue();

      expect(queue.dequeue(), null);
    });
  });

  group('Queue: peek', () {
    test('Peeking should return the head element without removing it', () {
      final queue = Queue();

      queue.enqueue(10);
      queue.enqueue(20);

      expect(queue.peek(), equals(10));
      expect(queue.size, equals(2));
    });

    test('Peeking at an empty queue should throw null', () {
      final queue = Queue();

      expect(queue.peek(), null);
    });
  });

  group('Queue: clear', () {
    test('Clearing a queue with elements should result in an empty stack', () {
      final queue = Queue();

      queue.enqueue(10);
      queue.enqueue(20);
      queue.enqueue(30);

      queue.clear();
      expect(queue.size, equals(0));
    });

    test('Clearing an empty queue should not throw any error', () {
      final queue = Queue();

      queue.clear();
      expect(queue.size, equals(0));
    });
  });
}
