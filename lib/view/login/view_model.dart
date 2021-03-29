// import 'package:account/repository/auth_repository.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel{
  bool hasToken = false;
  LoginViewModel();

  // Future<void> getSavedToken() async{
  //   final repo = AuthRepository();
  //   setBusyForObject(hasToken, true);
  //   await repo.init();
  //   print(repo.getToken());
  //   hasToken = true;
  //   setBusyForObject(hasToken, false);
  // }
}