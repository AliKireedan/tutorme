import 'package:flutter/material.dart';
import 'package:graduation_project/pages/ChatScreen.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رسالة مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رسالة مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رسالة مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رسالة مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رسالة مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رسالة مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام مستخد نظام ',
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
