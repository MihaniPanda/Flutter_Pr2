class ProviderEntity{

 late int id;
  final String name_of_the_organization;
  final String surname_of_the_head;
  final String manager_name;
  final String middle_name_of_the_head;
  final String phone_number;
  final String delivery_contry;
  final String inn_organization;

  ProviderEntity({required this.id,required this.name_of_the_organization, required this.surname_of_the_head, required this.manager_name,required this.middle_name_of_the_head,
   required this.phone_number, required this.delivery_contry , required this.inn_organization});
}