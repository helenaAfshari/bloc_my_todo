
import 'package:flutter/material.dart';
import 'package:todo_bloc/component/extention.dart';
import 'package:todo_bloc/component/text_style.dart';
import 'package:todo_bloc/gen/assets.gen.dart';
import 'package:todo_bloc/resource/colors.dart';
import 'package:todo_bloc/resource/dimens.dart';
import 'package:todo_bloc/resource/strings.dart';

import '../../widget/customwidget/button_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;   
   return Scaffold(
    body: Center(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: size.width/8,top:size.height/10 ),
            child: Image.asset(Assets.images.managee.path),
          ),
          
            (size.height / 13).height,
          Text(haStrings.manageYourTasks,
          style: LightAppTextStyles.manageYourTasksTextStyle),
    
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: RichText(
                text: TextSpan(
                  style: LightAppTextStyles.manageNotifierTextStyle,
                  text: haStrings.organize,
                ),
              ),
          ),
         
         (size.height/6).height,
        CustomButtonWidget(
          onPress: () {},
          height: size.height/16,
          width: size.width/1.7,
          color: haSolidColors.getStartedButtonColor,
          borderRadius: BorderRadius.all(Radius.circular(haDimens.small+5)),
          text: haStrings.getStarted,
          textColor: haSolidColors.getStartedTextColor,
          textStyle:LightAppTextStyles.getStartedTextStyle,
        )
        ],
      ),
    ));
  }
}