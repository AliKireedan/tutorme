import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(color: Colors.tealAccent),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Text("تعليم اساسي",
                          style: TextStyle(
                              fontFamily: 'Tajwal',
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
