import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository{
   SharedPreferences prefs;

   Future<void> init() async {
     prefs = await SharedPreferences.getInstance();
   }
   String getToken(){
     return prefs.getString('token');
   }
   void saveToken(String token){
     prefs.setString('token', token);
   }
   void removeToken(){
     prefs.remove('token');
   }
   

}