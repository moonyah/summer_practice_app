import 'package:flutter/material.dart';

import 'main.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyPage()));
              },
              icon: const Icon(
                Icons.home,
                color: Colors.black54,
              ))
        ],
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Width: ' + MediaQuery.of(context).size.width.toString()),
            Text('Height: ' + MediaQuery.of(context).size.height.toString()),
            Text('Aspect Ratio: ' + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
            Text('Orientation: ' + MediaQuery.of(context).orientation.toString())
          ],
        ),
      ),
    );
  }
}
