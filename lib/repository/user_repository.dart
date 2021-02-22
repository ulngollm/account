import 'package:account/api/user.dart';
import 'package:account/model/user.dart';

class UserRepository {
  static Future<User> get({String password, String email}) async {
    String token;
    
      final result = await UserApi.login(password: password, email: email);
      if (result != null)
        token = result['accessToken']['token'];
      else
        return null;
  
    final userdata = await UserApi.getProfile(token);
    if (userdata != null)
      return User.fromJson(userdata);
    else
      return null;
  }
}
