
import 'package:flutter_application_1/domain/entity/role_entity.dart';

class Role extends RoleEntity{
late int id;
final String role_name;

  Role({required this.id,required this.role_name}) :super(id:id,role_name : role_name);

  Map<String, dynamic> toMap(){
    return {'role_name':role_name};
  }

  factory Role.toFromMap(Map<String, dynamic> json)
  {
    return Role(id: json ['id'],role_name: json ['role_name']);
  }
}