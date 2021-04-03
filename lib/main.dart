import 'package:flutter/material.dart';
import 'package:flutter_vision/Screens/HomePage.dart';

import 'Utils/HomeDashBoard.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: HomeSlider1()),
    );
  }
}
