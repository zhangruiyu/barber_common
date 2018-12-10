import 'package:barber_common/module/auto/entitys/register_entity.dart';
import 'package:barber_common/module/auto/entitys/login_entity.dart';

class BeanFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "RegisterEntity") {
      return RegisterEntity.fromJson(json) as T;
    } else if (T.toString() == "LoginEntity") {
      return LoginEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}