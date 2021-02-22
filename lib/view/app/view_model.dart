import 'package:account/repository/auth_repository.dart';
import 'package:stacked/stacked.dart';

class RootViewModel extends BaseViewModel{
  final bool hasToken = false;
  RootViewModel();

  Future<void> getSavedToken() async{
    final repo = AuthRepository();
    await repo.init();
    repo.getToken();
  }
}