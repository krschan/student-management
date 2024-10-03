import 'package:gestion_alumnos/module.dart';

class Student {
  String name;
  String surname;
  String id;
  int age;
  List<Module> module;
  bool repeater;

  Student(
      this.name, this.surname, this.id, this.age, this.module, this.repeater);

  @override
  String toString() {
    return "$name $surname ($age) - $id: $module $repeater";
  }
}
