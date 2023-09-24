import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_bloc/resource/colors.dart';
import 'package:todo_bloc/screens/splash/splash_screen.dart';

void main() {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: haSolidColors.statuseBarColor,
    statusBarBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
      ),
      home: SplashScreen(),
    );
  }
}


