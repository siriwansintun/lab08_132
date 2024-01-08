import 'package:flutter/material.dart';
import 'package:lab08_132/page/firstpage.dart';
import 'package:lab08_132/page/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("secondpage 132"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is secondpage"),
            ElevatedButton(
              child: const Text('Go Back.'),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Firstpage()
                  ),
                );
              },
            ),
            Divider(),
            ElevatedButton(
              child: const Text('Go thirdpage.'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Thirdpage(data:"สวัสดีท่านผู้ชม",name:"pink"),
                  ),
                );
              },
            ),
          ],
        )));
  }
}
