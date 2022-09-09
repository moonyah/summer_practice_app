import 'package:flutter/material.dart';

import 'main.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeskTop'),
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
      ),
      backgroundColor: Colors.deepPurple[200],
    );
  }
}
