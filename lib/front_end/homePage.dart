import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(title: Text('data'),),
        body: Column(
          children: [
            Container(child: Text('data'),
            ),
            Container(child: Text('data'),
            ),
            Container(child: Text('data'),
            ),
            Container(child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
