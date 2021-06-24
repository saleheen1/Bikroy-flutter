import 'package:bikroy/core/Services/Register-service.dart';

class RegisterController {
  void submitData(
      String name, String mobile, String password, String email, String type) {
    RegisterService().submitData(name, mobile, password, email, type);
  }
}
