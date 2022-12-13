import 'package:flutter_application_1/domain/entity/buyer_entity.dart';

class Buyer extends BuyerEntity
{
late int id;
final String surname;
final String name;
final String patronymic;
final String phone_number;
final String address;
final int id_users;

  Buyer({required this.id,required this.surname, 
  required this.name, 
  required this.patronymic, 
  required this.phone_number, 
  required this.address, 
  required this.id_users}) 
  :super(id:id,surname : surname,
   name:name,
   patronymic:patronymic,
   phone_number:phone_number,
   address:address,
   id_users:id_users
   );

  Map<String, dynamic> toMap(){
    return {'surname':surname, 'name':name, 'patronymic':patronymic, 'phone_number':phone_number, 'address':address, 'id_users':id_users};
  }

  factory Buyer.toFromMap(Map<String, dynamic> json)
  {
    return Buyer(id: json ['id'],surname: json ['surname'], name: json ['name'], patronymic: json ['patronymic'], phone_number: json ['phone_number'], address: json ['address'], id_users: json ['id_users']);
  }
}