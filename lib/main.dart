import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get_maid/category_maids_screen.dart';
import 'package:get_maid/help_screen.dart';
import 'package:get_maid/settings_screen.dart';
import 'package:get_maid/tabs_screen.dart';
import 'package:get_maid/user_login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To find my maid ',
      theme: ThemeData(
          primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
         routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMaidsScreen.routeName: (ctx) => CategoryMaidsScreen(),
           SettingsScreen.routeName : (ctx) => SettingsScreen(),
           AuthScreen.routename : (ctx) => AuthScreen(),
           HelpScreen.routeName : (ctx) => HelpScreen(),
               },
    );
  }
}



