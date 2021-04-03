import 'package:flutter/material.dart';
import 'package:flutter_vision/Utils/Carousel.dart';
import 'package:flutter_vision/Utils/HomeSlider1.dart';
import 'package:flutter_vision/Utils/HomeSlider2.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Flutter Vision',
          style: GoogleFonts.mcLaren(color: Colors.black54, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: DashboardCarousel(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Machine Learning Classifier 1',
              style: GoogleFonts.mcLaren(color: Colors.black54, fontSize: 18),
            ),
            HomeSlider1(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Machine Learning Classifier 2',
              style: GoogleFonts.mcLaren(color: Colors.black54, fontSize: 18),
            ),
            HomeSlider2(),
          ],
        ),
      ),
    );
  }
}
