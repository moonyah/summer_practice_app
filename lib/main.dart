import 'package:flutter/material.dart';
import 'package:summer_practice_app/listview.dart';
import 'package:summer_practice_app/responsive_page.dart';

import 'likebuttonlistview.dart';
import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 30,
            color: Colors.white
          )
        )
      ),
      home: const OnBoardingPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Main Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OnBoardingPage()));
                },
                child: const Text('Go to onboarding screen')),
            const SizedBox(height: 5),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const ListViewPage()));
                },
                child: const Text('Go to ListView Page')),
            const SizedBox(height: 5),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LikeButtonListView()));
                },
                child: const Text('Go to ListView Page with like button')),
            const SizedBox(height: 5),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const ResponsivePage()));
                },
                child: const Text('Go to Responsive Page'))
          ],
        ),
      ),
    );
  }
}
