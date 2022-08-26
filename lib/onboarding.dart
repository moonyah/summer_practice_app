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
          PageViewModel(
              // 각 페이지 구성 담당
              title: 'welcome to my app',
              body: 'This is the first page'
                  'We are making on-boarding screens'
                  'It is very interesting',
              image: Image.asset('image/page1.png'),
              decoration: getPageDecoration()),
          PageViewModel(
              // 각 페이지 구성 담당
              title: 'welcome to my app',
              body: 'This is the second page'
                  'We are making on-boarding screens'
                  'It is very interesting',
              image: Image.asset('image/page2.png'),
              decoration: getPageDecoration()),
          PageViewModel(
              // 각 페이지 구성 담당
              title: 'welcome to my app',
              body: 'This is the third page'
                  'We are making on-boarding screens'
                  'It is very interesting',
              image: Image.asset('image/page3.png'),
              decoration: getPageDecoration()),
        ],
        done: const Text('done'),
        onDone: () {
          // onPressed 버튼과 유사
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => const MyPage()));
        }, // push 를 pushReplacement 로 변경하면 Main page 에 뒤로가기 버튼이 안 생긴다.
        next: const Icon(Icons.arrow_forward),//바꾸기
        showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        ),
        activeColor: Colors.red // 활성된 점의 색상
      ),
      curve: Curves.bounceOut, // 애니메이션 효과 적용하기
        );
  }

  PageDecoration getPageDecoration() {
    //클래스에 관련된 내용 만을 다루어야 함
    return const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.white);
  }
}
