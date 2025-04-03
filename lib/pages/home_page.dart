import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List toDoList = [
    ['Learn Chinese', false],
    ['Learn English', false],
    ['Learn Spanish', false],
    ['Learn French', false],
    ['Learn German', false],
    ['Learn Japanese', false],
    ['Learn Korean', false],
    ['Learn Russian', false],
    ['Learn Italian', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Simple To Do'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white ,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
            toDoList[index][0],
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ), 
          ),
          ),
        );
      }),
    );
  }
}