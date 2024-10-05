import 'dart:math';
import 'package:gestion_alumnos/globals.dart';
import 'package:gestion_alumnos/module.dart';
import 'package:gestion_alumnos/student.dart';

// Sort student modules
void ordenarModulos(List<Module> moduleStudent) {
  moduleStudent.sort((a, b) => a.name.compareTo(b.name));
}

void main(List<String> arguments) {
  // Original student list
  print('Lista original:');
  randomNumbers(moduleMap);

  // Iterate through the student list to print their data
  for (var student in studentsList) {
    print(student.toString());
  }

  print('..................................');

  // List of students with sorted modules
  print('Lista ordenada:');
  for (var student in studentsList) {
    ordenarModulos(student.module);
  }

  for (var student in studentsList) {
    print(student.toString());
  }

  print('..................................');

  // Iterate through the student list with their modules to validate if > 4 modules.
  for (var student in studentsList) {
    print('${student.name}:');
    validarNumerosDeModulos(student.module);
  }

  for (var student in studentsList) {
    print(student.toString());
  }

  print('..................................');

  // Generate random numbers to randomly select the student and the module.
  var rng = Random();

  Student randomStudent = studentsList[rng.nextInt(studentsList.length)];
  Module randomModule = moduleMap.values.elementAt(rng.nextInt(moduleMap.length));

  if (buscarModulo(randomStudent, randomModule.name)) {
    print("Module ${randomModule.name} de ${randomStudent.name} encontrado");
  } else {
    print("Module ${randomModule.name} de ${randomStudent.name} no encontrado.");
  }
}
