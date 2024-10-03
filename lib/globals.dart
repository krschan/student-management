import 'package:gestion_alumnos/module.dart';
import 'package:gestion_alumnos/student.dart';

import 'dart:math';

// Map with Module class
Map<int, Module> infoModule = {
  3: Module('M03', '01', 15),
  1: Module('M01', '05', 235),
  2: Module('M02', '02', 0),
  5: Module('M05', '04', 543),
  4: Module('M04', '03', 52),
  6: Module('M06', '03', 6),
};

// Students
List<Student> studentsList = [
  Student('Cristian', 'Oraña', '123456789A', 21, infoModule.values.toList(), false),
  Student('Pau', 'Carrera', '123456789A', 21, infoModule.values.toList(), true),
  Student('Dylan', 'Navarro', '123456789A', 22, infoModule.values.toList(), false),
];

void randomNumbers(Map<int, Module> modules) {
  var rng = Random();

  for (var student in studentsList) {
    // Generar un número aleatorio de módulos para cada estudiante.
    // (Añado +1 ya que una lista empieza desde 0 y un estudiante no puede tener 0 modulos.)
    int indexModules = rng.nextInt(modules.length) + 1;

    // Crear una lista para los modulos asignados para cada estudiante
    List<Module> assignedModules = [];

    // Asignar módulos aleatorios con el tamaño maximo del indice generado
    while (assignedModules.length < indexModules) {
      int randomIndex = rng.nextInt(modules.length);
      Module randomModule = modules.values.elementAt(randomIndex);

      // Los modulos asignados para cada estudiante no pueden repetirse, tienen que ser diferentes.
      if (!assignedModules.contains(randomModule)) {
        assignedModules.add(randomModule);
      }
    }

    // Asignar la lista de módulos al estudiante
    student.module = assignedModules;
  }
}

void validarNumerosDeModulos(Map<int, Module> modules) {
  List<int> modulesList = [];

  modulesList.addAll(modules.keys);

  int moduleCounter = 0;

  for (int key in modules.keys) {
    if (key != 0) {
      moduleCounter++;
    }
  }

  if (moduleCounter > 4) {
    print("Curso completo");
  } else {
    print("Añadiendo más modulos..");
  }
}
