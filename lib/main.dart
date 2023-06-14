import 'package:flutter/material.dart';
import 'package:auth_app/src/utils/constant.dart';
import 'package:auth_app/src/screens/welcome.dart';


void main () => runApp(const AuthScreen());



class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,

      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: gnPrimaryColor,
        // scaffoldBackgroundColor: sfBackgroundColor,
      textTheme: const TextTheme(
        displayMedium : TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),
        headlineMedium: TextStyle( color: Colors.white , fontWeight: FontWeight.normal), 
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:const  TextStyle(

          color: gnPrimaryColor,
          
        )
      )
      ),

      inputDecorationTheme: InputDecorationTheme(

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(.2)
          )
        )
      )


      ),
      home:const WelcomeScreen() ,
    );
  }
}

