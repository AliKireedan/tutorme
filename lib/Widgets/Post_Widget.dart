import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  String postText;
  String titleText;
  String userImage;
  String userName;
    final VoidCallback onPress;

  DateTime timeOfCourse;
  List<String> tags;

  PostWidget(
      {Key? key,
        required this.onPress,
      required this.userImage,
      required this.userName,
      required this.titleText,
      required this.timeOfCourse,
      required this.postText,
      required this.tags})
      : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final DateTime postTime = DateTime.now();
//var elicpsisState= ExpandableText( ).text = this.postTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            this.widget.titleText,maxLines: 2,overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Roboto',
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:
                                List.generate(widget.tags.length, (index) {
                              return Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  widget.tags[index],
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            }),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 75,
                          height: 75,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(this.widget.userImage),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(this.widget.userName,textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis,  style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            color: Colors.black),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {widget.onPress();},
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      this.widget.postText,
                      textAlign: TextAlign.right,maxLines: 4,overflow:TextOverflow.ellipsis,
                      style: TextStyle(),
                    )
                )
            ),
     /*       InkWell(
    child: Text(this.textToDisplay),
    onTap: () {

    //if the text is not expanded we show it all
    if (widget.postText.length > 25 && textToDisplay.length <= 25) {
    setState(() {
    textToDisplay = widget.postText;
    });
    }
    //else if the text is already expanded we contract it back
    else if (widget.postText.length > 25 && textToDisplay.length > 25) {
    setState(() {
    textToDisplay = widget.postText.substring(0,25)+"...";
    });
    }


    },
    )*/
          ],
        ),
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  ExpandableText({this.text = ""});

//text is the total text of our expandable widget
  final String text;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  String textToDisplay = '';

  @override
  void initState() {
    //if the text has more than a certain number of characters, the text we display will consist of that number of characters;
    //if it's not longer we display all the text
    print(widget.text.length);

    //we arbitrarily chose 25 as the length
    textToDisplay = widget.text.length > 25
        ? widget.text.substring(0, 25) + "..."
        : widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(textToDisplay),
      onTap: () {
        //if the text is not expanded we show it all
        if (widget.text.length > 25 && textToDisplay.length <= 25) {
          setState(() {
            textToDisplay = widget.text;
          });
        }
        //else if the text is already expanded we contract it back
        else if (widget.text.length > 25 && textToDisplay.length > 25) {
          setState(() {
            textToDisplay = widget.text.substring(0, 25) + "...";
          });
        }
      },
    );
  }
}
