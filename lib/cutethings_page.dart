import 'package:flutter/material.dart';

import 'model.dart';

class CuteThingsPage extends StatelessWidget {
  const CuteThingsPage({Key? key, required this.cuteThings}) : super(key: key);

  // 생성자에 추가해 준다. 널 값을 가질 수 없기 때문에 required 붙임

  final CuteThings cuteThings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cuteThings.name),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(cuteThings.imgPath)),
            const SizedBox(
              height: 20,
            ),
            Text('It lives in ' + cuteThings.location,
              style: const TextStyle(
                fontSize: 18
              ),
            )
          ],
        ),
      ),
    );
  }
}
