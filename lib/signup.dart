import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample8/colors-UI/Hex_color.dart';
import 'package:sample8/loginPage.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _value = 1;
  bool HiddenPassword = true;
  Color _color1 = HexColor("#FCE5E2");
  Color _color2 = HexColor("#243642");
  Color _color3 = HexColor("#19070C");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color2,
      body: SingleChildScrollView(
        child: Container(
          // color: _color2,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: _color1,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Existing user ?',
                        style: TextStyle(
                          color: _color2,
                          fontSize: 18,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (LoginPage())),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: _color1,
                                fontSize: 36,
                              ),
                            ),
                            color: _color2,
                            splashColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // color: Colors.amberAccent[700],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sign up with',
                        style: TextStyle(
                          color: _color3,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'My Data',
                      style: TextStyle(
                        color: _color3,
                        fontSize: 36,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person, color: _color3),
                                labelText: 'User Name',
                                hintText: 'Enter your UserName',
                                labelStyle: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: _color3,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            // Container(
                            //   child: Row(
                            //     children: <Widget>[
                            //       Radio(
                            //         value: 1,
                            //         groupValue: _value,
                            //         onChanged: (value) {
                            //           setState(() {
                            //             _value = value;
                            //           });
                            //         },
                            //       ),
                            //       Text(
                            //         'Male',
                            //         style: TextStyle(
                            //           color: Colors.amberAccent[700],
                            //         ),
                            //       ),
                            //       Radio(
                            //         value: 2,
                            //         groupValue: _value,
                            //         onChanged: (value) {
                            //           setState(() {
                            //             _value = value;
                            //           });
                            //         },
                            //       ),
                            //       Text(
                            //         'Female',
                            //         style: TextStyle(
                            //           color: Colors.amberAccent[700],
                            //         ),
                            //       ),
                            //       Radio(
                            //         value: 3,
                            //         groupValue: _value,
                            //         onChanged: (value) {
                            //           setState(() {
                            //             _value = value;
                            //           });
                            //         },
                            //       ),
                            //       Text(
                            //         'Others',
                            //         style: TextStyle(
                            //           color: Colors.amberAccent[700],
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email, color: _color3),
                                labelText: 'Email or Phone no.',
                                hintText: 'Enter your Email or Phone no.',
                                labelStyle: TextStyle(
                                  fontSize: 28,                                  fontWeight: FontWeight.bold,
                                  color: _color3,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            TextFormField(
                              obscureText: HiddenPassword,
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.password, color: _color3),
                                labelText: 'Password',
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      HiddenPassword = !HiddenPassword;
                                    });
                                  },
                                  child: Icon(
                                    Icons.visibility,
                                    color: _color1,
                                  ),
                                ),
                                hintText: 'Enter your Password',
                                labelStyle: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: _color3,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  width: 250,
                                  height: 60,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      ),
                                    onPressed: () {},
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                        color: _color2,
                                        fontSize: 36,
                                      ),
                                    ),
                                    color: _color1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
