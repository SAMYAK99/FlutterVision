import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/StreamerX/FlutterProjects/flutter_vision/lib/Views/Classifier1/FaceMask.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            Content(
                img: 'assets/HomePageImages/fmask.jpg',
                title: 'Face Mask',
                tag: 'fmask'),
            Content(
                img: 'assets/HomePageImages/aven.jpg',
                title: 'Avengers Classifier',
                tag: 'avengers'),
            Content(
                img: 'assets/HomePageImages/sentiment.png',
                title: 'Sentiment Analysis',
                tag: 'sentiment'),
            Content(
                img: 'assets/HomePageImages/poseestimation.png',
                title: 'Pose Estimation',
                tag: 'imgcap'),
            Content(
                img: 'assets/HomePageImages/fruits.jpg',
                title: 'Fruit Classifier',
                tag: 'fruit'),
          ],
        ),
      ],
    );
  }
}

class Content extends StatelessWidget {
  String img, title, tag;
  Content({this.img, this.title, this.tag});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (tag == 'facemask') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FaceMask()));
        }
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => CarouselGrid(
        //           search: tag,
        //         )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
