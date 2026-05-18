import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: SimpleProject(),
    );
  }
}

class SimpleProject extends StatelessWidget {
  const SimpleProject({super.key}); //widget name SimpleProject

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text('Facebook'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 40,
          onPressed: () {},
        ), //menu IconButton on the left of AppBar
        /*actions is a list of widgets that are displayed on the right
             side of the AppBar. In this case, we have a search IconButton.
            */
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            iconSize: 40,
            onPressed: () {},
          ), //search IconButton on the right of AppBar
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 40,
            onPressed: () {},
          ),
        ], //notifications IconButton on the right of AppBar
      ),

      // The body of the Scaffold is a Center widget that contains a Text widget
      body: Center(
        child: Text(
          'Welcome to Facebook Lite! 👋',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 190, 69, 206),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0, 139, 252),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ), //add IconButton on the bottom right of the Scaffold
      ),
    );
  }
}
