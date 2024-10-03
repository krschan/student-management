class Module {
  String name;
  String uf;
  int hour;

  Module(this.name, this.uf, this.hour);

  @override
  String toString() {
    return '$name: $uf - ($hour horas)';
  }
}
