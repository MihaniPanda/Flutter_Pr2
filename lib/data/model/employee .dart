
import 'package:flutter_application_1/domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity{
late int id;
final String surname;
final String name;
final String patronymic;
final String date_of_birth;
final String gender;
final String phone_number;
final String address;
final String passport_series;
final String passport_nombers;
final int id_users;
final int id_jobtitle;

  Employee({required this.id,
  required this.surname,
   required this.name,
   required this.patronymic,
   required this.date_of_birth,
   required this.gender,
   required this.phone_number,
   required this.address,
   required this.passport_series,
   required this.passport_nombers,
   required this.id_users,
   required this.id_jobtitle
   }) 
  :super(id:id,surname : surname,
   name:name, 
   patronymic:patronymic,
   date_of_birth:date_of_birth,
   gender:gender,
   phone_number:phone_number,
   address:address,
   passport_series:passport_series,
   passport_nombers:passport_nombers,
   id_users:id_users,
   id_jobtitle:id_jobtitle,
   );

  Map<String, dynamic> toMap(){
    return {'surname':surname, 'name':name, 'patronymic':patronymic
    , 'date_of_birth':date_of_birth
    , 'gender':gender
    , 'phone_number':phone_number
    , 'address':address
    , 'passport_series':passport_series
    , 'passport_nombers':passport_nombers
    , 'id_users':id_users
    , 'id_jobtitle':id_jobtitle };
  }

  factory Employee.toFromMap(Map<String, dynamic> json)
  {
    return Employee(id: json ['id'],surname: json ['surname']
    ,name: json ['name']
    ,patronymic: json ['patronymic']
    ,date_of_birth: json ['date_of_birth']
    ,gender: json ['gender']
    ,phone_number: json ['phone_number']
    ,address: json ['address']
    ,passport_series: json ['passport_series']
    ,passport_nombers: json ['passport_nombers']
    ,id_users: json ['id_users']
    ,id_jobtitle: json ['id_jobtitle']
     );
  }
}