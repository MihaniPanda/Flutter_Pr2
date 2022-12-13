class UserEntity{
  late int id;
  final String login;
 
    final String password;
  final int id_role;
  
  UserEntity({
    required this.id,
    required this.login,
    
    required this.id_role,
    required this.password
    });
}