import 'package:flutter/material.dart';
import 'package:flutter_vision/Utils/Carousel.dart';
import 'package:flutter_vision/Views/Classifier1/CatBreed.dart';
import 'package:flutter_vision/Views/Classifier1/CatNDog.dart';
import 'package:flutter_vision/Views/Classifier1/DogBreed.dart';
import 'package:flutter_vision/Views/Classifier1/FaceMask.dart';

class DashSlider2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeSlider2 extends StatefulWidget {
  _HomeSlider2State createState() => _HomeSlider2State();
}

class _HomeSlider2State extends State<HomeSlider2> {
  @override
  Widget build(BuildContext context) {}

  Widget DashImage2(String imageVal, String name, String tag) {
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

  Widget DashBoardSlider2() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            DashImage2('assets/HomePageImages/catndog.jpg',
                'Cat Vs Dog \n Classifier', 'catndog'),
            SizedBox(
              width: 10.0,
            ),
            DashImage2(
              'assets/HomePageImages/fmask.jpg',
              'Face Mask \n Detection',
              'fmask',
            ),
            SizedBox(
              width: 10.0,
            ),
            DashImage2('assets/HomePageImages/catbreed.jpg',
                'Cat Breed \n Identifier', 'catbreed'),
            SizedBox(
              width: 10.0,
            ),
            DashImage2('assets/HomePageImages/dogbreed.jpg',
                'Dog Breed \n Identifier', 'dogbreed'),
          ],
        ));
  }
}
