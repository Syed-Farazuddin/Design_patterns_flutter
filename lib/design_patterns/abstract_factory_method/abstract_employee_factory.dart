import 'package:learning/design_patterns/abstract_factory_method/employee.dart';
import 'package:learning/design_patterns/abstract_factory_method/employee_factory.dart';

abstract class AbstractEmployeeFactory {
  Employee createEmployee(EmployeeType employeeType);
}
