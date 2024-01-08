import 'package:flutter/material.dart';
import 'package:lab08_132/page/secondpage.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key, required this.data, required this.name});

  final String data;
  final String name;

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("thirdpage 132"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is thirdpage"),
            Text(widget.data),
            Text(widget.name),
            ElevatedButton(
              child: const Text('Go Back.'),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()
                  ),
                );
              },
            ),
          ],
        )));
  }
}
