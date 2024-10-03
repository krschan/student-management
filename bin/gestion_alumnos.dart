import 'dart:collection';

import 'package:gestion_alumnos/globals.dart';
import 'package:gestion_alumnos/module.dart';

String ordenarModulos(Map<int, Module> modules) {
  // Crear un SplayTreeMap para ordenar por clave
  SplayTreeMap<int, Module> moduleMap = SplayTreeMap<int, Module>();

  // Agregar los módulos al SplayTreeMap
  modules.forEach((key, value) {
    moduleMap[key] = value;
  });

  // Sorted modules
  for (int key in moduleMap.keys) {
    ("$key : ${moduleMap[key]}");
  }

  return '$moduleMap';
}

void main(List<String> arguments) {
  // Students list
  print('Lista original de alumnos:');

  randomNumbers(infoModule);

  // Recorrer la lista de estudiantes para imprimir sus datos
  for (var student in studentsList) {
    print(student.toString());
  }

  // Lista de estudiantes con módulos ordenados
  print('Lista ordenada de alumnos');

  validarNumerosDeModulos(infoModule);
}
