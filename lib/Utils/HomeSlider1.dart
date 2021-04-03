import 'package:flutter/material.dart';
import 'package:flutter_vision/Utils/Carousel.dart';
import 'package:flutter_vision/Views/Classifier1/CatBreed.dart';
import 'package:flutter_vision/Views/Classifier1/CatNDog.dart';
import 'package:flutter_vision/Views/Classifier1/DogBreed.dart';
import 'package:flutter_vision/Views/Classifier1/FaceMask.dart';

class HomeSlider1 extends StatefulWidget {
  _HomeSlider1State createState() => _HomeSlider1State();
}

class _HomeSlider1State extends State<HomeSlider1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: DashboardCarousel(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Machine Learning Classifier 1'),
            SizedBox(
              height: 10.0,
            ),
            DashBoardSlider1(),
            SizedBox(
              height: 20,
            ),
            Text('Machine Learning Classifier 1'),
            SizedBox(
              height: 10.0,
            ),
            DashBoardSlider1(),
            SizedBox(
              height: 20,
            ),
            Text('Machine Learning Classifier 1'),
            SizedBox(
              height: 10.0,
            ),
            DashBoardSlider1(),
            SizedBox(
              height: 20,
            ),
            Text('Machine Learning Classifier 1'),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget DashImage1(String imageVal, String name, String tag) {
    return GestureDetector(
      onTap: () {
        if (tag == 'catndog') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatNDog()));
        } else if (tag == 'fmask') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FaceMask()));
        } else if (tag == 'catbreed') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatBreed()));
        } else if (tag == 'dogbreed') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DogBreed()));
        }
      },
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: 120.0,
                width: 180.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage(imageVal),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              Container(
                color: Colors.black12,
                height: 120.0,
                width: 180.0,
                alignment: Alignment.bottomCenter,
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget DashBoardSlider1() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            DashImage1('assets/HomePageImages/catndog.jpg',
                'Cat Vs Dog \n Classifier', 'catndog'),
            SizedBox(
              width: 10.0,
            ),
            DashImage1(
              'assets/HomePageImages/fmask.jpg',
              'Face Mask \n Detection',
              'fmask',
            ),
            SizedBox(
              width: 10.0,
            ),
            DashImage1('assets/HomePageImages/catbreed.jpg',
                'Cat Breed \n Identifier', 'catbreed'),
            SizedBox(
              width: 10.0,
            ),
            DashImage1('assets/HomePageImages/dogbreed.jpg',
                'Dog Breed \n Identifier', 'dogbreed'),
          ],
        ));
  }
}
