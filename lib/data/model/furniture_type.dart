import 'package:flutter_application_1/domain/entity/furniture_type_entity.dart';

class Furniture_type extends FurnitureTypeEntity
{
late int id;
final String furniture_type;

  Furniture_type({required this.id,required this.furniture_type}) :super(id:id,furniture_type : furniture_type);
  
  Map<String, dynamic> toMap(){
    return {'furniture_type':furniture_type};
  }

  factory Furniture_type.toFromMap(Map<String, dynamic> json)
  {
    return Furniture_type(id: json ['id'],furniture_type: json ['furniture_type']);
  }
}