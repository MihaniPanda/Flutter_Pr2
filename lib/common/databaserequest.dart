///Запросы к БД
abstract class DataBaseRequest{

  static String deleteTable(String table)=>'DROP TABLE $table';
  static const String tableRole = 'Role'; //
  static const String tableUsers = 'Users'; //
  static const String tableProvider = 'Provider'; //
  static const String tableFurnitureType = "Furniture_Type"; //
  static const String tableFurniture="Furniture"; //
  static const String tableBuyer="Buyer"; //
  static const String tableJobTitle="Job_Title";
  static const String tableEmployee="Employee"; //
  
  static const String tableOrder="Order";

  static const List<String> tableList =[
    tableRole,
    tableUsers,
    tableProvider,
    tableFurnitureType,
    tableFurniture,
    tableBuyer,
    tableJobTitle,
    tableEmployee,
    tableOrder
  ];
    static const List<String> tableCreateList =[
    _createTableRole,
    _createTableUser,
    _createTableProvider,
    _createTableFurnitureType,
    _createTableFurniture,
    _createTableBuyer,
    _createTableJobTitle,
    _createTableEmployee,
    _createTableOrder
  ];
  static const String _createTableRole =
  'CREATE TABLE "$tableRole" ("id" INTEGER ,"role_name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';
  /// Запрос для создания таблицы Users

  static const String _createTableUser =
  'CREATE TABLE "$tableUsers" ("id" INTEGER   KEY,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "$tableRole"("id"),PRIMARY KEY("id"));';

  static const String _createTableProvider=
  'CREATE TABLE "$tableProvider"( "id" INTEGER , "name_of_the_organization" TEXT NOT NULL UNIQUE, "surname_of_the_head" TEXT NOT NULL, "manager_name" TEXT NOT NULL,"middle_name_of_the_head" TEXT NOT NULL,"phone_number" TEXT NOT NULL UNIQUE, "delivery_contry" TEXT NOT NULL,"inn_organization" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';
  
  static const String _createTableOrder= 
    'CREATE TABLE "$tableOrder" ("id" INTEGER,"total_price" INTEGER NOT NULL, "id_furniture" INTEGER,"id_users" INTEGER, FOREIGN KEY("id_furniture") REFERENCES "$tableFurniture"("id"),  FOREIGN KEY("id_users") REFERENCES "$tableUsers"("id"), PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableFurniture =
   'CREATE TABLE "$tableFurniture" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE,"manufacturer" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, "id_provider" INTEGER, "id_furniture_type" INTEGER, FOREIGN KEY("id_provider") REFERENCES "$tableProvider"("id"), FOREIGN KEY("id_furniture_type") REFERENCES "$tableFurnitureType"("id")PRIMARY KEY("id" AUTOINCREMENT));';

   static const String _createTableJobTitle =
   'CREATE TABLE "$tableJobTitle" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, PRIMARY KEY("id" AUTOINCREMENT));';
   
   static const String _createTableEmployee =
    'CREATE TABLE "$tableEmployee" ("id" INTEGER,"surname" TEXT NOT NULL, "name" TEXT NOT NULL, "patronymic" TEXT, "date_of_birth" TEXT NOT NULL, "gender" TEXT NOT NULL, "phone_number" TEXT NOT NULL UNIQUE, "address" TEXT NOT NULL, "passport_series" TEXT NOT NULL UNIQUE, "passport_numbers" TEXT NOT NULL UNIQUE, "id_users" INTEGER,"id_jobtitle" INTEGER, FOREIGN KEY("id_users") REFERENCES "$tableUsers"("id"),  FOREIGN KEY("id_jobtitle") REFERENCES "$tableJobTitle"("id"), PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableFurnitureType =
   'CREATE TABLE "$tableFurnitureType" ("id" INTEGER,"furniture_type" TEXT NOT NULL,PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableBuyer =
    'CREATE TABLE "$tableBuyer" ("id" INTEGER,"surname" TEXT NOT NULL, "name" TEXT NOT NULL, "patronymic" TEXT, "phone_number" TEXT NOT NULL UNIQUE, "address" TEXT NOT NULL UNIQUE, "id_users" INTEGER, FOREIGN KEY("id_users") REFERENCES "$tableUsers"("id"),PRIMARY KEY("id" AUTOINCREMENT));';
}