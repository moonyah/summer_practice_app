import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'model.dart';

class CuteThingsPage extends StatefulWidget {
  const CuteThingsPage({Key? key, required this.cuteThings}) : super(key: key);

  // 생성자에 추가. 널 값을 가질 수 없기 때문에 required

  final CuteThings cuteThings;

  @override
  State<CuteThingsPage> createState() => _CuteThingsPageState();
}

class _CuteThingsPageState extends State<CuteThingsPage> {

  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cuteThings.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(widget.cuteThings.imgPath)),
            const SizedBox(
              height: 20,
            ),
            Text('It lives in ' + widget.cuteThings.location,
              style: const TextStyle(
                fontSize: 18
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: likeCount,
            )
          ],
        ),
      ),
    );
  }
}
