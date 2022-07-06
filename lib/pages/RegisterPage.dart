import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  String dropdownValue = 'طرابلس';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text('إنشاء حساب'),
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
                                child: TextField(
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
                                child: TextField(
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
                        child: TextField(
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
                        child: TextField(
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
                        child: TextField(
                          obscureText: _isObscure2,
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
                      width: 300,
                      child: DropdownButton<String>(

                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
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
                        onPressed: () {},
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
