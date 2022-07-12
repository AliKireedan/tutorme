import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var phoneNumber = TextEditingController();
  var pass = TextEditingController();
  var pass2 = TextEditingController();
  String userType = '';
  String dropdownValue = 'طرابلس';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text('إنشاء حساب'),
            backgroundColor: Color(0xff48A9C5),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'Images/New__User.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextFormField(controller: firstName,
                                  validator: (value){
                                 
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'الاسم'),
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextFormField(controller: lastName,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'اللقب'),
                                )),
                          ),
                        ],
                      ),
                    ),
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
                        child: TextFormField(controller: phoneNumber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'رقم الهاتف'),
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
                          controller: pass,
                          obscureText: _isObscure1,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'كلمة المرور',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isObscure1 = !_isObscure1;
                                    });
                                  },
                                  icon: Icon(Icons.remove_red_eye))),
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
                          controller: pass2,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'تأكيد كلمة المرور',
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
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child:
                                  Text('المدينة', textAlign: TextAlign.right)),
                          Expanded(
                            flex: 3,
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_rounded),
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(color: Colors.deepPurple),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>[
                                'طرابلس',
                                'بنغازي',
                                'الزاوية',
                                'الجفرة',
                                'الكفرة',
                                'سرت',
                                'زنتان',
                                'الرحيبات',
                                'جادو',
                                'غريان',
                                'العزيزية',
                                'نالوت',
                                'البيضاء',
                                'الرجبان',
                                'سبها'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      child: Row(children: [
                        Text('نوع المستخدم', textAlign: TextAlign.right),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Text('عميل'),
                            Radio(
                                value: 'Client',
                                groupValue: userType,
                                onChanged: (val) {
                                  setState((){
                                    userType = val.toString();
                                    print(userType);
                                  });
                                })
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Text('مرشد'),
                            Radio(
                                value: 'tutor',
                                groupValue: userType,
                                onChanged: (val) {
                                  setState((){
                                    userType = val.toString();
                                    print(userType);
                                  });
                                })
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: Color(0xff48A9C5), width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      child: MaterialButton(
                        onPressed: () {
                          print(userType);
                          print(firstName);
                          print(lastName);
                          print(pass);
                          print(pass2);
                        },
                        child: Text(
                          'إنشاء الحساب',
                          style:
                              TextStyle(color: Color(0xff48A9C5), fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
