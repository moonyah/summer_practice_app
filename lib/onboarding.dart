import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:summer_practice_app/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: [
          // On-boarding screen 은 보통 여러 개
          PageViewModel(// 각 페이지 구성 담당
            title: 'welcome to my app',
            body: 'This is the first page',
            image: Image.asset('image/page1.png'),
            decoration: PageDecoration()
          ),
          PageViewModel(// 각 페이지 구성 담당
              title: 'welcome to my app',
              body: 'This is the first page'
          ),
          PageViewModel(// 각 페이지 구성 담당
              title: 'welcome to my app',
              body: 'This is the first page'
          )
        ],
        done: const Text('done'),
        onDone: () {
          // onPressed 버튼과 유사
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const MyPage()));
        },
        next: const Icon(Icons.arrow_forward));
  }
}
