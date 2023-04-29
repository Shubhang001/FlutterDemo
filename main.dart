import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:flutter_application_1/Sceen/home_page.dart';
import 'package:flutter_application_1/Sceen/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        // ignore: prefer_const_constructors
        "/" :(context) => LoginPage(),
        MyRoutes.homeRoutes:(context) =>  HomePage(),
        // ignore: prefer_const_constructors
        MyRoutes.LoginRoutes:(context) => LoginPage(),
      },
    );
  }
}