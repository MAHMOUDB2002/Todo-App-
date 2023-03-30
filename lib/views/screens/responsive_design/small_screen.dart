import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_tasks.dart';
import '../complete_tasks.dart';
import '../incomplete_tasks.dart';

class SmallScreen extends StatefulWidget {
  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  refreshPage() {
    setState(() { });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                Navigator.of(context).pop();
              },
              title: const Text("All Tasks"),
              subtitle: const Text("Go To All Tasks"),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                pageController.jumpToPage(1);
                Navigator.of(context).pop();
              },
              title: const Text("Complete Tasks"),
              subtitle: const Text("Go To Complete Tasks"),
              leading: const Icon(Icons.done),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                pageController.jumpToPage(2);
                Navigator.of(context).pop();
              },
              title: const Text("InComplete Tasks"),
              subtitle: const Text("Go To InComplete Tasks"),
              leading: const Icon(Icons.cancel),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Todo App"),),
      body: PageView(
        controller: pageController,
        children: [
          AllTasks(refreshPage),
          CompleteTasks(refreshPage),
          InCompleteTasks(refreshPage),
        ],
      ),    );
  }
}
