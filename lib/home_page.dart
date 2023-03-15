import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Create')),
          ElevatedButton(onPressed: () {}, child: Text('Read')),
          ElevatedButton(onPressed: () {}, child: Text('Update')),
          ElevatedButton(onPressed: () {}, child: Text('Delete'))
        ],
      ),
    );
  }
}
