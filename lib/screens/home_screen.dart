
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:todo_bloc/component/extention.dart';
// import 'package:todo_bloc/component/text_style.dart';
// import 'package:todo_bloc/gen/assets.gen.dart';
// import 'package:todo_bloc/resource/colors.dart';
// import 'package:todo_bloc/resource/strings.dart';
// import 'package:todo_bloc/widget/customwidget/button_widget.dart';
// import 'package:todo_bloc/widget/customwidget/text_field_widget.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var size  = MediaQuery.of(context).size;
//        List<String> items = List.generate(1, (index) => "Item $index");

//     TextEditingController controller  = TextEditingController();
//     return Scaffold(
//        body: Column(
//          children: [
//            Stack(
//             children: [
//               Container(
//                width: double.infinity,
//                height: size.height/26,
//                color: haSolidColors.statuseBarColor,
//               ),
//              SvgPicture.asset(Assets.images.backgroundHome,width: size.width,),
//               Padding(
//                 padding:  EdgeInsets.only(left:size.width/3,top: size.height/50),
//                 child: Column(
//                   children: [
//                     Text(haStrings.mTodoLogo,style: LightAppTextStyles.mTodoLogoTextStyle,),
//                    (size.height/16).height,

//                     RichText(text: TextSpan(
//                       text: "you have",style: TextStyle(color: Colors.black,fontSize: 19),
//                       children:<TextSpan> [
//                        TextSpan(text: "5 tasks",style: TextStyle(color: Colors.white,fontSize: 24) ),
//                        TextSpan(text: "today!" )
//                       ]
//                     )),
                  
//                   ],
//                 ),
//               ),
//                 Padding(
//                   padding:  EdgeInsets.only(left: size.width/2.6,top: size.height/6),
//                   child: Text("Saturday,september 10,2022",style: TextStyle(fontSize: 10),),
//                 ),
//                 Padding(
//                   padding:  EdgeInsets.only(left: size.width/4.4,top: size.height/4),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: haSolidColors.shadowColor,
//                           offset: Offset(0, 3),
//                           blurRadius: 6,
//                         )
//                       ],
                    
//                     ),
//                     height: size.height/15,
//                     width:size.width/1.6,
//                     child:  Row(
//                       children: [
//                         (size.width/20).width,
//                       Icon(Icons.search,color: haSolidColors.searchIconColor,),
//                          (size.width/35).width,
//                        Text(haStrings.searchTasks,
//                        style: LightAppTextStyles.searchTextStyle,),
//                       ],
//                     ),
//                   ),
//                   // child: CustomTextFieldWidget(borderColor: Colors.white,
//                   // width: size.width/1.6,
//                   // height: size.height/29,
//                   // borderRadius: BorderRadius.all(Radius.circular(10)),
//                   // boxColor: Colors.white,
//                   // prefixMyIconn: Icon(Icons.search),
//                   // hintText: haStrings.searchTasks,
//                   // hintStyle: LightAppTextStyles.searchTextStyle,
//                   // textEditingController: controller,),
//                 )
//            ],),

//                   Row(
//         children: [
//         (size.width/4).width,
//         CustomButtonWidget(
//         onPress: () {},
//         height: size.height / 26,
//         text: haStrings.today,
//         width: size.width / 6,
//         color: haSolidColors.boxColor,
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(color:haSolidColors.borderColor),
//       ),
//        (size.width/27).width,
//         CustomButtonWidget(
//         onPress: () {},
//         height: size.height / 26,
//         text: haStrings.week,
//         width: size.width / 6,
//         color: haSolidColors.boxColor,
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(color: haSolidColors.borderColor),
//       ),
//         (size.width/25).width,
//         CustomButtonWidget(
//         onPress: () {},
//         height: size.height / 26,
//         text: haStrings.month,
//         width: size.width / 6,
//         color: haSolidColors.boxColor,
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(color: haSolidColors.borderColor),
//       ),
//                 ],
//               ),
              
//               Padding(
//                 padding:  EdgeInsets.only(right: size.width/1.7,top: size.height/20),
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
                      
//                     });
//                   },
//                   child: CustomButtonWidget(
//                     onPress: () { },
//                    height: size.height/7.3,
//                    width: size.width/4,
//                    borderRadius: BorderRadius.circular(10),
//                   myIcon: SvgPicture.asset(Assets.icon.vector),
//                    border: Border.all(color: Colors.pink),
//                   ),
//                 ),
//               ),
       
//          ],
//        ),
//     );
//   }

 
// }


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_bloc/component/extention.dart';
import 'package:todo_bloc/component/text_style.dart';
import 'package:todo_bloc/gen/assets.gen.dart';
import 'package:todo_bloc/resource/colors.dart';
import 'package:todo_bloc/resource/strings.dart';
import 'package:todo_bloc/widget/customwidget/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List<String> items = List.generate(0, (index) => "Item $index");
   


  @override
  Widget build(BuildContext context) {
      var size  = MediaQuery.of(context).size;
      List<Color> itemColors = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.purple,
  Colors.teal,
];
    return Scaffold(
     
      body: Column(
        children: [
           Stack(
            children: [
              Container(
               width: double.infinity,
               height: size.height/26,
               color: haSolidColors.statuseBarColor,
              ),
             SvgPicture.asset(Assets.images.backgroundHome,width: size.width,),
              Padding(
                padding:  EdgeInsets.only(left:size.width/3,top: size.height/50),
                child: Column(
                  children: [
                    Text(haStrings.mTodoLogo,style: LightAppTextStyles.mTodoLogoTextStyle,),
                   (size.height/16).height,

                    RichText(text: TextSpan(
                      text: "you have",style: TextStyle(color: Colors.black,fontSize: 19),
                      children:<TextSpan> [
                       TextSpan(text: "5 tasks",style: TextStyle(color: Colors.white,fontSize: 24) ),
                       TextSpan(text: "today!" )
                      ]
                    )),
                  
                  ],
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(left: size.width/2.6,top: size.height/6),
                  child: Text("Saturday,september 10,2022",style: TextStyle(fontSize: 10),),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: size.width/4.4,top: size.height/4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: haSolidColors.shadowColor,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        )
                      ],
                    
                    ),
                    height: size.height/15,
                    width:size.width/1.6,
                    child:  Row(
                      children: [
                        (size.width/20).width,
                      Icon(Icons.search,color: haSolidColors.searchIconColor,),
                         (size.width/35).width,
                       Text(haStrings.searchTasks,
                       style: LightAppTextStyles.searchTextStyle,),
                      ],
                    ),
                  ),
                  // child: CustomTextFieldWidget(borderColor: Colors.white,
                  // width: size.width/1.6,
                  // height: size.height/29,
                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                  // boxColor: Colors.white,
                  // prefixMyIconn: Icon(Icons.search),
                  // hintText: haStrings.searchTasks,
                  // hintStyle: LightAppTextStyles.searchTextStyle,
                  // textEditingController: controller,),
                )
           ],),
                       Row(
        children: [
        (size.width/4).width,
        CustomButtonWidget(
        onPress: () {},
        height: size.height / 26,
        text: haStrings.today,
        width: size.width / 6,
        color: haSolidColors.boxColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color:haSolidColors.borderColor),
      ),
       (size.width/27).width,
        CustomButtonWidget(
        onPress: () {},
        height: size.height / 26,
        text: haStrings.week,
        width: size.width / 6,
        color: haSolidColors.boxColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: haSolidColors.borderColor),
      ),
        (size.width/25).width,
        CustomButtonWidget(
        onPress: () {},
        height: size.height / 26,
        text: haStrings.month,
        width: size.width / 6,
        color: haSolidColors.boxColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: haSolidColors.borderColor),
      ),
                ],
              ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(left: size.width/12,right: size.width/12),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,   
                  mainAxisSpacing: 10.0,       
                  crossAxisSpacing: 10.0, 
                ),
                itemCount: items.length + 1,
                itemBuilder: (context, index) {
                  if (index < items.length) {
                    // ایتم‌های لیست
                    return Container(
                      
                      color: itemColors[index],
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                  } else {
                    // دکمه اضافه کردن
                    return GestureDetector(
                     
                      child: CustomButtonWidget(
                      onPress: () {
                        
                        setState(() {
                          items.add("Item ${items.length}");
                        });
                     
                       },
                     height: size.height/7.3,
                     width: size.width/4,
                     borderRadius: BorderRadius.circular(10),
                    myIcon: SvgPicture.asset(Assets.icon.vector),
                     border: Border.all(color: Colors.pink),
                    ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}