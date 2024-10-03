**Student Management in Dart**

Two main classes:
- Module: Includes name, UFs, and hours.
- Student: Includes name, surname, ID, age, enrolled modules, and whether they’re repeating the course.

Some key features:
- Custom constructors, non-nullable variables, and toString() methods for better readability.
- Global variables for modules stored in a Map.

Main methods:
- ordenarModulos(): Sorts a student's modules.
- validarNumeroDeModulos(): Checks if a student has 4+ modules, adds if needed.
- buscarModulo(): Finds a module by name.
