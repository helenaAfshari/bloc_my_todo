
import 'package:flutter/material.dart';
import 'package:todo_bloc/gen/assets.gen.dart';
import 'package:todo_bloc/resource/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;   
   return Scaffold(
    body: Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: size.width/8,top:size.height/12 ),
          child: Image.asset(Assets.images.managee.path),
        ),

        Text(haStrings.manageYourTasks,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize:24),)
      ],
    ));
  }
}