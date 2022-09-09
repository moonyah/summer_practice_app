import 'package:flutter/material.dart';
import 'package:summer_practice_app/desktop_body.dart';
import 'package:summer_practice_app/mobile_body.dart';
import 'package:summer_practice_app/reponsive_layout.dart';

import 'main.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {

  @override
  Widget build(BuildContext context) {

    //final currentWidth = MediaQuery.of(context).size.width;

    return const Scaffold(
      //backgroundColor: currentWidth < 600 ? Colors.deepPurple[300] : Colors.red,
        // child: Column(
        //   children: [
        //     Text('Width: ' + MediaQuery.of(context).size.width.toString()),
        //     Text('Height: ' + MediaQuery.of(context).size.height.toString()),
        //     Text('Aspect Ratio: ' + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
        //     Text('Orientation: ' + MediaQuery.of(context).orientation.toString())
        //   ],
        // ),
        //child: Text(currentWidth.toString()),
        body: ResponsiveLayout(
          mobileBody: MobileBody(),
          desktopBody: DesktopBody(),
        ),
    );
  }
}
