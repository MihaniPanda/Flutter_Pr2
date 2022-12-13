import 'package:flutter_application_1/domain/entity/user_entity.dart';

class Users extends UserEntity{
late int id;
final String login;
final String password;
final int id_role;

  Users({
    required this.id,
    required this.login,
   
    required this.password,
    required this.id_role
    }) :super(
      id:id,
      login : login, 
      
      password:password,
      id_role: id_role
    );

  Map<String, dynamic> toMap(){
    return {
      'login':login, 
       
      'password':password, 
      'id_role':id_role
      };
  }

  factory Users.toFromMap(Map<String, dynamic> json)
  {
    return Users(
      id: json ['id'],
      login: json ['role'],
      
      password:json ['password'],
      id_role:json ['id_role'],
      );
  }
}