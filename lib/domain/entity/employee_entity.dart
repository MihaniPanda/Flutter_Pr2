class EmployeeEntity{
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
  EmployeeEntity({required this.id,
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
   }) ;
}