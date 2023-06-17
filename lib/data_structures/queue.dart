class Queue {
  final _queue = [];

  void enqueue(item) {
    _queue.add(item);
  }

  int? dequeue() {
    if (_queue.isEmpty) {
      return null;
    }

    return _queue.removeAt(0);
  }

  int? peek() {
    if (_queue.isEmpty) {
      return null;
    }

    return _queue.first;
  }

  void clear() {
    while (_queue.isNotEmpty) {
      _queue.removeLast();
    }
  }

  List get queue => _queue;
  int get size => _queue.length;
}
