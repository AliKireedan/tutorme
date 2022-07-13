import 'package:flutter/material.dart';
import 'package:graduation_project/Widgets/Category_Widget.dart';

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

                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: 'ADD8E6',
                  endColor: '00008B',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: 'ffafbd ',
                  endColor: 'ffc3a0',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: '2193b0 ',
                  endColor: '6dd5ed',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: 'cc2b5e ',
                  endColor: '753a88',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: '06beb6 ',
                  endColor: '48b1bf',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: 'ffafbd ',
                  endColor: 'ffc3a0',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: '2193b0 ',
                  endColor: '6dd5ed',
                  sizedBoxHeight: 20,
                ),
                CategoryWidget(
                  icon: Icons.account_balance_outlined,
                  text: 'تعليم اساسي',
                  startColor: 'cc2b5e ',
                  endColor: '753a88',
                  sizedBoxHeight: 20,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
