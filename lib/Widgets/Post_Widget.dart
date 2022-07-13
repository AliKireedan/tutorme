import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  String paragraph, titleText;
  DateTime timeOfCourse;
  List<String> tags;
  final DateTime postTime = DateTime.now();

  PostWidget(
      {Key? key,
      required this.titleText,
      required this.timeOfCourse,
      required this.paragraph,
      required this.tags})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.titleText,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 23, fontFamily: 'Roboto', color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(tags.length, (index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      tags[index],
                      style: TextStyle(fontSize: 12, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  child: Text(
                this.paragraph,maxLines: 3,
                style: TextStyle(overflow:TextOverflow.clip ,),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
