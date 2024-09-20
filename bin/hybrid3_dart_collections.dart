import 'dart:convert';
import 'package:hybrid3_dart_collections/hybrid3_dart_collections.dart'
    as hybrid3_dart_collections;

class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field) {
    people.removeWhere((person) => person['first'] == field);
  }
}

void main() {
  String json = '''
  [
    {"first": "Steve", "last": "Griffith", "email": "griffis@algonquincollege.com"},
    {"first": "Adesh", "last": "Shah", "email": "shaha@algonquincollege.com"},
    {"first": "Tony", "last": "Davidson", "email": "davidst@algonquincollege.com"},
    {"first": "Adam", "last": "Robillard", "email": "robilla@algonquincollege.com"}
  ]
  ''';

  List<Map<String, String>> peopleList = (jsonDecode(json) as List)
      .map((item) => (item as Map)
          .map((key, value) => MapEntry(key.toString(), value.toString())))
      .toList()
      .cast<Map<String, String>>();

  Students students = Students(peopleList);
  print("Initial list:");
  students.output();

  students.sort("first");
  print("\nList sorted by first name:");
  students.output();

  students.sort("last");
  print("\nList sorted by last name:");
  students.output();

  students.sort("email");
  print("\nList sorted by last email:");
  students.output();
}
