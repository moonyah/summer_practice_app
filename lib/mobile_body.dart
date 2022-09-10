import 'package:flutter/material.dart';

import 'main.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile'),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              color: Colors.deepPurple[400],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 120,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
