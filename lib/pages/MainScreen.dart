import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/pages/rulesPage.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 20),
        child: Column(
          children: [
            Text('الاعلانات المميزة',style: TextStyle(fontSize: 25),),
            SizedBox(height: 20,),
            CarouselSlider(
              options: CarouselOptions(height: size.height *0.3,
              autoPlay: true,pauseAutoPlayOnTouch: true),

              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),

                        decoration: BoxDecoration(
                            color: Colors.amber
                        ),
                        child:
                    Stack(children: [

                    ],)
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
