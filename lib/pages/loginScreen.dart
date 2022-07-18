import 'package:flutter/material.dart';
import 'package:graduation_project/pages/ChatScreen.dart';
import 'package:graduation_project/pages/Recover_Account_Code.dart';



import '../Widgets/AppBar.dart';
import 'Recover_Account.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

void firebaseAuthenticate() {
  //connect with firebase
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure2 = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildAppBar('تسجيل الدخول'),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  //Text("تسجيل الدخول"),
                  Image.asset(
                    'Images/appLogo.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            border: InputBorder.none,
                            hintText: 'رقم الهاتف'),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextFormField(
                        obscureText: _isObscure2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' كلمة المرور',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye))),
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                      width: 250,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff48A9C5),
                          borderRadius: BorderRadius.circular(5)),
                      child: MaterialButton(
                          onPressed: () {
                            firebaseAuthenticate();
                          },
                          child: Text("تسجيل الدخول",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Arial Hebrew')))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: 250,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecoverAccount()));
                          },
                          child: Text("استرجاع الحساب",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Arial Hebrew')))),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
