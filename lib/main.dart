import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo_app_flutter/views/screens/main_todo.dart';
import 'package:todo_app_flutter/views/screens/responsive_design/large_screen.dart';
import 'package:todo_app_flutter/views/screens/responsive_design/small_screen.dart';

void main() {
  runApp(MaterialApp(home: RespnsiveTest()));
  //  runApp(MaterialApp(home: RespnsiveTest()));
//    runApp(MaterialApp(home:MainToDo()));
}

class RespnsiveTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; // لارتفاع الشاشة
    double width = MediaQuery.of(context).size.width; // لعرض الشاشة

    return width > 400
        ? LargeScreen()
        : SmallScreen();

  }
}



















//   Scaffold(
//   appBar: AppBar(title: Text('Responsive design')),
//   // body: Container(
//   //   height: h/2,// الارتفاع نص ارتفاع الشاشة
//   //   width: w/2,// العرض نص عرض الشاشة
//   //   color: Colors.red,
//   // ),
//   body: Center(
//     child: ElevatedButton(
//       onPressed: () {
//         log(h.toString());
//         log(w.toString());
//       },
//       child: Text("print screen dimensions"),
//     ),
//
//     // height: h / 2, // الارتفاع نص ارتفاع الشاشة
//     // width: w / 2, // العرض نص عرض الشاشة
//     // color: Colors.red,
//   ),
// );
