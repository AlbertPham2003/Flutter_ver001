import 'dart:convert';

class Box<T> {
  T? content;

  void add(T item){
    content = item;
  }
}

void main() {
  const data = {'text': 'foo', 'value': 2, 'status': false, 'extra': null};
  final String jsonString = jsonEncode(data);
  print(jsonString);
}

class TestBox<T> {
  T? data;

  void setData(T item){
    data = item;
  }
}
