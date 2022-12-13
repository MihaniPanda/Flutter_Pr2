
import 'package:flutter_application_1/domain/entity/provider_entity.dart';

class Provider extends ProviderEntity{
  late int id;
  final String name_of_the_organization;
  final String surname_of_the_head;
  final String manager_name;
  final String middle_name_of_the_head;
  final String phone_number;
  final String delivery_contry;
  final String inn_organization;

  Provider({required this.id,required this.name_of_the_organization, required this.surname_of_the_head, required this.manager_name,required this.middle_name_of_the_head,
   required this.phone_number, required this.delivery_contry , required this.inn_organization}) :super(id:id,name_of_the_organization : name_of_the_organization,
  surname_of_the_head:surname_of_the_head,middle_name_of_the_head:middle_name_of_the_head, manager_name:manager_name,phone_number:phone_number,delivery_contry:delivery_contry, inn_organization:inn_organization);

  Map<String, dynamic> toMap(){
    return {'name_of_the_organization':name_of_the_organization, 'surname_of_the_head':surname_of_the_head, 'manager_name':manager_name, 'middle_name_of_the_head':middle_name_of_the_head,
    'phone_number':phone_number,'delivery_contry':delivery_contry,'inn_organization':inn_organization};
  }

  factory Provider.toFromMap(Map<String, dynamic> json)
  {
    return Provider(id: json ['id'],name_of_the_organization: json ['name_of_the_organization'], surname_of_the_head: json ['surname_of_the_head'], manager_name: json ['manager_name'],
    middle_name_of_the_head: json ['middle_name_of_the_head'], phone_number: json ['phone_number'], delivery_contry: json ['delivery_contry'], inn_organization: json ['inn_organization'] );
  }
}
