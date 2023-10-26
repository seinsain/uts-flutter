import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  Widget buildTabContent(String label) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.login_sharp)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.logout_outlined)),
              ],
            ),
            title: const Text('UTS'),
          ),
          body: TabBarView(
            children: [
              buildTabContent('LOGIN'),
              buildTabContent('HOME'),
              buildTabContent('LOGOUT'),
            ],
          ),
        ),
      ),
    );
  }
}
