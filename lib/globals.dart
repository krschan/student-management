import 'package:gestion_alumnos/module.dart';
import 'package:gestion_alumnos/student.dart';

import 'dart:math';

// Map of Module
Map<int, Module> moduleMap = {
  1: Module('M01', '01', 235),
  2: Module('M02', '02', 0),
  3: Module('M03', '03', 15),
  4: Module('M04', '04', 52),
  5: Module('M05', '05', 543),
  6: Module('M06', '06', 6),
};

// List of students
List<Student> studentsList = [
  Student('Cristian', 'Oraña', '123456789A', 21, moduleMap.values.toList(), false),
  Student('Pau', 'Carrera', '123456789A', 21, moduleMap.values.toList(), true),
  Student('Dylan', 'Navarro', '123456789A', 22, moduleMap.values.toList(), false),
];

void randomNumbers(Map<int, Module> modules) {
  var rng = Random();

  for (var student in studentsList) {
    // Generate a random number of modules for each student.
    // (Adding +1 since a list starts from 0 and a student cannot have 0 modules.)
    int indexModules = rng.nextInt(modules.length) + 1;

    // Create a list for the assigned modules for each student.
    List<Module> assignedModules = [];

    // Assign random modules with the maximum size of the generated index.
    while (assignedModules.length < indexModules) {
      int randomIndex = rng.nextInt(modules.length);
      Module randomModule = modules.values.elementAt(randomIndex);

      // The assigned modules for each student cannot repeat; they must be different.
      if (!assignedModules.contains(randomModule)) {
        assignedModules.add(randomModule);
      }
    }

    // Assign the list of modules to the student
    student.module = assignedModules;
  }
}

void validarNumerosDeModulos(List<Module> moduleStudent) {
  // Count the current modules
  int moduleCounter = moduleStudent.length;

  // Check if the course is complete
  if (moduleCounter > 4) {
    print("Curso completado.");
    return; // Exit the method if the course is complete
  } else {
    print("Añadiendo más modulos...");
  }

  // Convert the map to a list to add modules if the course is not complete.
  List<Module> moduleList = moduleMap.values.toList();

  // Add modules until there are at least 4, ensuring there are no duplicates
  while (moduleCounter < 4) {
    var rng = Random();
    // Select a random module
    Module randomModule = moduleList[rng.nextInt(moduleList.length)];

    // Only add the module if it is not already in the student's list
    if (!moduleStudent.contains(randomModule)) {
      moduleStudent.add(randomModule);
      moduleCounter++;
    }
  }
}

bool buscarModulo(Student student, String moduleName) {
  // Iterate through the student's module list
  for (var module in student.module) {
    // Compare the module name with the searched name
    if (module.name == moduleName) {
      return true; // If we find the module, return true
    }
  }
  return false; // If we do not find the module, return false
}
