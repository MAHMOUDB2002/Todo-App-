import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_tasks.dart';
import '../complete_tasks.dart';
import '../incomplete_tasks.dart';

class LargeScreen extends StatefulWidget {
  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  refreshPage() {
    setState(() {});
  }

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height; // لارتفاع الشاشة
    double w = MediaQuery.of(context).size.width; // لعرض الشاشة
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

    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Row(
        children: [
          SizedBox(
              width: w / 2,
              height: h,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  const UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/me.jpg'),
                      ),
                      accountName: Text("Moo"),
                      accountEmail: Text("mjdyd23@gmail.com")),
                  ListTile(
                    onTap: () {
                      pageController.jumpToPage(0);
                      // Navigator.of(context).pop();
                    },
                    title: const Text("All Tasks"),
                    subtitle: const Text("Go To All Tasks"),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      pageController.jumpToPage(1);
                      // Navigator.of(context).pop();
                    },
                    title: const Text("Complete Tasks"),
                    subtitle: const Text("Go To Complete Tasks"),
                    leading: const Icon(Icons.done),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      pageController.jumpToPage(2);
                      // Navigator.of(context).pop();
                    },
                    title: const Text("InComplete Tasks"),
                    subtitle: const Text("Go To InComplete Tasks"),
                    leading: const Icon(Icons.cancel),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ))),
          Expanded(
              child: Center(
            child: PageView(
              controller: pageController,
              children: [
                AllTasks(refreshPage),
                CompleteTasks(refreshPage),
                InCompleteTasks(refreshPage),
              ],
            ),
          ))
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Responsive design')),
      // body: Container(
      //   height: h/2,// الارتفاع نص ارتفاع الشاشة
      //   width: w/2,// العرض نص عرض الشاشة
      //   color: Colors.red,
      // ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            log(h.toString());
            log(w.toString());
          },
          child: Text("print screen dimensions"),
        ),

        // height: h / 2, // الارتفاع نص ارتفاع الشاشة
        // width: w / 2, // العرض نص عرض الشاشة
        // color: Colors.red,
      ),
    );
  }
}
