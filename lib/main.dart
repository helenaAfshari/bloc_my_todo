import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_bloc/resource/colors.dart';
import 'package:todo_bloc/screens/home_screen.dart';
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

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
      ),
      home: HomeScreen(),
    );
  }
}




// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyGrid(),
//     );
//   }
// }

// class MyGrid extends StatefulWidget {
//   @override
//   _MyGridState createState() => _MyGridState();
// }

// class _MyGridState extends State<MyGrid> {
//   List<String> items = List.generate(2, (index) => "Item $index");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: Column(
//         children: [
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3, // تعداد ستون‌ها
//                 mainAxisSpacing: 10.0, // فاصله در سمت عمودی بین ایتم‌ها
//                 crossAxisSpacing: 10.0, // فاصله در سمت افقی بین ایتم‌ها
//               ),
//               itemCount: items.length + 1, // تعداد ایتم‌ها + 1 برای دکمه اضافه کردن
//               itemBuilder: (context, index) {
//                 if (index < items.length) {
//                   // ایتم‌های لیست
//                   return Container(
                    
//                     color: Color.fromARGB(255, 15, 66, 97), // رنگ پس زمینه ایتم
//                     child: Center(
//                       child: Text(
//                         items[index],
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                   );
//                 } else {
//                   // دکمه اضافه کردن
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         items.add("Item ${items.length}");
//                       });
//                     },
//                     child: Container(
                     
//                       color: Colors.green, // رنگ پس زمینه دکمه
//                       child: Center(
//                         child: Icon(
//                           Icons.add,
//                           size: 40,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   );
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyGrid(),
//     );
//   }
// }

// class MyGrid extends StatefulWidget {
//   @override
//   _MyGridState createState() => _MyGridState();
// }

// class _MyGridState extends State<MyGrid> {
  // List<String> items = List.generate(6, (index) => "Item $index");
// List<Color> itemColors = [
//   Colors.blue,
//   Colors.red,
//   Colors.green,
//   Colors.orange,
//   Colors.purple,
//   Colors.teal,
//   // ادامه رنگ‌ها را اضافه کنید به تعداد مورد نیاز
// ];
//   // تابع برای نمایش دیالوگ و اضافه کردن ایتم جدید
  // void _showAddItemDialog() {
  //   String newItemName = "";

  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text('اضافه کردن ایتم جدید'),
  //         content: TextField(
  //           onChanged: (value) {
  //             newItemName = value;
  //           },
  //           decoration: InputDecoration(hintText: 'نام ایتم جدید'),
  //         ),
  //         actions: [
  //           ElevatedButton(
  //             onPressed: () {
  //               if (newItemName.isNotEmpty) {
  //                 setState(() {
  //                   items.add(newItemName);
  //                 });
  //                 Navigator.pop(context); // بستن دیالوگ
  //               }
  //             },
  //             child: Text('اضافه کردن'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
    
  //     body: GridView.builder(
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 3,
  //         mainAxisSpacing: 10.0,
  //         crossAxisSpacing: 10.0,
  //       ),
  //       itemCount: items.length + 1,
  //       itemBuilder: (context, index) {
  //         if (index < items.length) {
  //           return Container(
  //             color: itemColors[index % itemColors.length],
  //             child: Center(
  //               child: Text(
  //                 items[index],
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //             ),
  //           );
  //         } else {
  //           return GestureDetector(
  //             onTap: _showAddItemDialog,
  //             child: Container(
  //               color: Colors.green,
  //               child: Center(
  //                 child: Icon(
  //                   Icons.add,
  //                   size: 40,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //             ),
  //           );
  //         }
  //       },
  //     ),
//     );
//   }
// }


