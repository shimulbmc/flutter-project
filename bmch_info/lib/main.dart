 import 'package:bmch_info/ui/app_route_path.dart';
import 'package:bmch_info/ui/signup.dart';
import 'package:bmch_info/ui/singin.dart';
import 'package:flutter/material.dart';
 import './ui/home_page.dart';
 import './ui/about_page.dart';

 import 'ui/app_route_path.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();


  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(),
      initialRoute:  AppRoutePath.signInPage,
      routes: <String,WidgetBuilder>{
      AppRoutePath.signInPage:(context)=> SingIn(),
       '/about':(context)=> AboutPage(),
       AppRoutePath.signUpPage:(context)=> SignUp(),
       
       
      
        
       
      },
    );
  }
}
