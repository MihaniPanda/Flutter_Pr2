
import 'package:flutter_application_1/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity{
late int id;
final String name;
final String manufacturer;
final double price;
final int id_furniture_type;
final int id_provider;

  Furniture({required this.id,required this.name, required this.manufacturer,required this.price,required this.id_furniture_type, required this.id_provider}) 
  :super(id:id,name : name, manufacturer:manufacturer,price:price, id_furniture_type:id_furniture_type, id_provider:id_provider);

  Map<String, dynamic> toMap(){
    return {'name':name,'manufacturer':manufacturer, 'price':price, 'id_furniture_type':id_furniture_type, 'prid_providerice':id_provider, };
  }

  factory Furniture.toFromMap(Map<String, dynamic> json)
  {
    return Furniture(id: json ['id'],name: json ['name'], manufacturer: json ['manufacturer'],price: json ['price'], id_furniture_type: json ['id_furniture_type'], id_provider: json ['id_provider']);
  }
}