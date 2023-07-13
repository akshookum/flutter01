import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int san = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter 01',
      // debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Center(child: Text('Counter App')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home Work 01'),
              Text(
                '$san',
                style: TextStyle(fontSize: 38),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              san = san - 1;
            });
          },
          child: const Icon(Icons.remove),
        ),
      ),
    );
  }
}
