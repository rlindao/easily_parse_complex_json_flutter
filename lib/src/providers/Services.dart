import 'package:http/http.dart' as http;
import '../models/Users.dart';

class Services{

  static const String url = 'https://jsonplaceholder.typicode.com/users';
  static Uri myUri = Uri.parse(url);
  
  static Future<List<User>> getUsers() async{
    try{
        final response = await http.get(myUri);
        if(200 == response.statusCode){
          final List<User> users = usersFromJson( response.body);
          return users;
        } else{
          return [];
        }
    }catch(e){
      return [];
    }
  }
}