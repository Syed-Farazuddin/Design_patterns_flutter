import 'package:learning/design_patterns/abstract_factory_method/abstract_employee_factory.dart';
import 'package:learning/design_patterns/abstract_factory_method/android_dev.dart';
import 'package:learning/design_patterns/abstract_factory_method/employee.dart';
import 'package:learning/design_patterns/abstract_factory_method/web_dev.dart';

class EmployeeFactory extends AbstractEmployeeFactory {
  @override
  Employee createEmployee(EmployeeType type) {
    switch (type) {
      case EmployeeType.android:
        return AndroidDev();
      case EmployeeType.mobile:
        return WebDeveloper();
      default:
        throw Exception('Invalid employee type');
    }
  }
}

enum EmployeeType {
  android,
  mobile,
}
