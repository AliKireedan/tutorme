import 'package:flutter/material.dart';
import 'package:graduation_project/pages/rulesPage.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 20),
        child: Column(
          children: [
            Text("إعلانات",
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Tajwal',
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
