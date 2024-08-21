import 'package:learning/design_patterns/abstract_factory_method/employee.dart';

class AndroidDev implements Employee {
  @override
  int getSalary() => 40000;

  @override
  String getRole() => 'Android Developer';
}
