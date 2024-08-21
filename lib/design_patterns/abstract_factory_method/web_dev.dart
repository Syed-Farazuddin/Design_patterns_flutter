import 'package:learning/design_patterns/abstract_factory_method/employee.dart';

class WebDeveloper implements Employee {
  @override
  int getSalary() => 50000;
  @override
  String getRole() => "Web Developer";
}
