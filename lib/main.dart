import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/db/databasehelper.dart';


void main() async{
  await DataBaseHelper.instance.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
    
  }
}

