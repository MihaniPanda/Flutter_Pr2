
import 'package:flutter_application_1/domain/entity/Order_entity.dart';

class Order extends OrderEntity
{
late int id;
final int total_price;
final int id_furniture;
final int id_users;


  Order({required this.id,required this.total_price,required this.id_furniture,required this.id_users}) :super(id:id,total_price : total_price, id_furniture:id_furniture,id_users:id_users);
  
  Map<String, dynamic> toMap(){
    return {'total_price':total_price,'id_furniture':id_furniture,'id_users':id_users};
  }

  factory Order.toFromMap(Map<String, dynamic> json)
  {
    return Order(id: json ['id'],total_price: json ['total_price'],id_furniture: json ['id_furniture'],id_users: json ['id_users']);
  }
}
