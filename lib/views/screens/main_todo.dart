import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_tasks.dart';
import 'complete_tasks.dart';
import 'incomplete_tasks.dart';

class MainToDo extends StatefulWidget {
  @override
  State<MainToDo> createState() => _MainToDoState();
}

class _MainToDoState extends State<MainToDo> {
  PageController pageController = PageController();

  int selectedIndex = 0;

  refreshPage() {
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children:  [
      //       const UserAccountsDrawerHeader(
      //           currentAccountPicture: CircleAvatar(
      //             backgroundImage: AssetImage('assets/images/me.jpg'),
      //           ),
      //           accountName: Text("Moo"),
      //           accountEmail: Text("mjdyd23@gmail.com")),
      //       ListTile(
      //         onTap: (){
      //           pageController.jumpToPage(0);
      //           Navigator.of(context).pop();
      //           } ,
      //         title: Text("All Tasks"),
      //         subtitle: Text("Go To All Tasks"),
      //         leading: Icon(Icons.list),
      //         trailing: Icon(Icons.arrow_forward_ios),
      //       )
      //       ,ListTile(
      //         onTap: (){
      //           pageController.jumpToPage(1);
      //           Navigator.of(context).pop();
      //         } ,
      //         title: Text("Complete Tasks"),
      //         subtitle: Text("Go To Complete Tasks"),
      //         leading: Icon(Icons.done),
      //         trailing: Icon(Icons.arrow_forward_ios),
      //       )
      //       ,ListTile(
      //         onTap: (){
      //           pageController.jumpToPage(2);
      //           Navigator.of(context).pop();
      //         } ,
      //         title: Text("InComplete Tasks"),
      //         subtitle: Text("Go To InComplete Tasks"),
      //         leading: Icon(Icons.cancel),
      //         trailing: Icon(Icons.arrow_forward_ios),
      //       )
      //       ,
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (x) {
          selectedIndex = x;
          pageController.jumpToPage(x);
          log(x.toString());
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'All Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done), label: 'Complete Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel), label: 'InComplete Tasks'),
        ],
      ),
      appBar: AppBar(
        title: const Text("Todo App"),
        actions: [
          ElevatedButton(
              onPressed: () {
                //pageController.jumpToPage(1);
                pageController.animateToPage(1,
                    duration: Duration(seconds: 3), curve: Curves.linear);
              },
              child: const Text("Go to complete screen"))
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasks(refreshPage),
          CompleteTasks(refreshPage),
          InCompleteTasks(refreshPage),
        ],
      ),
    );
  }
}
