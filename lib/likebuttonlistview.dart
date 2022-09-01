import 'package:flutter/material.dart';

import 'model.dart';

class LikeButtonListView extends StatefulWidget {
  const LikeButtonListView({Key? key}) : super(key: key);

  @override
  State<LikeButtonListView> createState() => _LikeButtonListViewState();
}

class _LikeButtonListViewState extends State<LikeButtonListView> {
  static List<String> cuteThingsName = [
    'Apple',
    'Crab',
    'Earth',
    'Mushroom',
    'Octopus',
    'Rose',
    'Thunder',
    'Volcano'
  ];

  static List<String> cuteThingsImagePath = [
    'image/likebuttonListview/apple.png',
    'image/likebuttonListview/crab.png',
    'image/likebuttonListview/earth.png',
    'image/likebuttonListview/mushroom.png',
    'image/likebuttonListview/octopus.png',
    'image/likebuttonListview/rose.png',
    'image/likebuttonListview/thunder.png',
    'image/likebuttonListview/volcano.png'
  ];

  static List<String> cuteThingsLocation = [
    'tree',
    'sea',
    'space',
    'forest and mountain',
    'sea',
    'garden',
    'sky',
    'planet'
  ];

  final List<CuteThings> cutethingsData = List.generate(
      cuteThingsLocation.length,
      (index) => CuteThings(cuteThingsName[index], cuteThingsLocation[index],
          cuteThingsImagePath[index])); // 이 길이만큼 객체 생성

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: cutethingsData.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(
                  cutethingsData[index].name
                ),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(cutethingsData[index].imgPath),
                ),
              ),
            );
          }),
    );
  }
}
