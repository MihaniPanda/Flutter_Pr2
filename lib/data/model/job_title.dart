
import 'package:flutter_application_1/domain/entity/job_title_entity.dart';

class Job_Title  extends JobtitleEntity{
late int id;
  final int name_job_title;

  Job_Title({required this.id,required this.name_job_title}) :super(id:id, name_job_title : name_job_title);

  Map<String, dynamic> toMap(){
    return { 'name_job_title':name_job_title};
  }

  factory Job_Title.toFromMap(Map<String, dynamic> json)
  {
    return Job_Title(id: json ['id'],name_job_title: json ['name_job_title']);
  }
}