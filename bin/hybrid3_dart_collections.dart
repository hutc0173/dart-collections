import 'dart:convert';
import 'package:hybrid3_dart_collections/hybrid3_dart_collections.dart'
    as hybrid3_dart_collections;

class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!))
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }
}

void main(List<String> arguments) {
  print('Hello world: ${hybrid3_dart_collections.calculate()}!');
}
