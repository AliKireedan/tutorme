import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Widgets/successDialog.dart';
import 'package:graduation_project/pages/ChatScreen.dart';
import 'package:graduation_project/pages/Recover_Account_Code.dart';
import 'package:graduation_project/providers/userStateProvider.dart';
import 'package:graduation_project/services/auth.dart';
import 'package:provider/provider.dart';

import '../Widgets/AppBar.dart';
import 'OTPScreen.dart';
import 'Recover_Account.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure2 = true;
  var email = TextEditingController();
  var password = TextEditingController();
  final auth = FirebaseAuth.instance;

  Future firebaseAuthenticate() async {
    //login with firebase!!!
    await auth.signInWithEmailAndPassword(
        email: email.text, password: password.text);
    auth;
    print('current user ${auth.currentUser}');
  }

  Future reloadFirebaseUser() async {
    //login with firebase!!!
    await auth.currentUser?.reload();
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
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
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xff48A9C5)),
                          borderRadius: BorderRadius.circular(12)),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: email,
                          validator: (email) {
                            if (email != null &&
                                !EmailValidator.validate(email)) {
                              return 'يرجى إدخال بريد إلكتروني صحيح';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              border: InputBorder.none,
                              hintText: 'البريد الإلكتروني'),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xff48A9C5)),
                          borderRadius: BorderRadius.circular(12)),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          obscureText: _isObscure2,
                          controller: password,
                          validator: (value) {
                            if (value != null && value.length <= 7) {
                              return 'يجب أن لا تقل كلمة المرور عن ثمانية حروف أو أرقام';
                            } else {
                              return null;
                            }
                          },
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
                        ),
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
                            if (firebaseAuthenticate().toString().isNotEmpty ==
                                true) {
                              //set the state
                              reloadFirebaseUser();
                              context
                                  .read<UserState>()
                                  .setUser(auth.currentUser);
                              Navigator.pushNamed(context, '/home');
                            } else {
                              // do nothing here
                            }
                          },
                          child: Text("تسجيل الدخول",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )))),
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
                              )))),
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
