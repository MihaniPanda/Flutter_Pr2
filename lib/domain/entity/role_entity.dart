class RoleEntity{
  late int id;
  final String role_name;

  RoleEntity({required this.id,required this.role_name});
}
enum RoleEnum {admin, user}