class Box<T> {
  T? content;

  void add(T item){
    content = item;
  }
}

void main() {
  var intBox = Box<int>();
  var stringBox = Box<String>();
  stringBox.add('Hello');
  intBox.add(123);
  intBox.add('Hello');
}

class TestBox<T> {
  T? data;

  void setData(T item){
    data = item;
  }
}
