class Stack {
  final _stack = [];

  void push(item) {
    _stack.add(item);
  }

  int? pop() {
    if (_stack.isEmpty) {
      return null;
    }

    return _stack.removeLast();
  }

  int? peek() {
    if (_stack.isEmpty) {
      return null;
    }

    return _stack.last;
  }

  void clear() {
    while (_stack.isNotEmpty) {
      _stack.removeLast();
    }
  }

  List get stack => _stack;
  int get size => _stack.length;
}
