import 'package:suskry/models/login_model.dart';
import 'package:suskry/views/login/login_view.dart';

class NavigatorController {
  
  getView(){
    final loginModel = LoginModel();
    loginModel.getToken();
    return LoginView();
  }
}