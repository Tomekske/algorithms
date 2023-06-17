class Stack {
  final _stack = [];

  void push(item) {
    _stack.add(item);
  }

  int? pop() {
    if (_stack.isEmpty) {
      return null;
    }

    int poppedItem = _stack.last;
    _stack.removeLast();

    return poppedItem;
  }

  List get stack => _stack;
}
