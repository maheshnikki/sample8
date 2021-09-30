import 'package:flutter/material.dart';
import 'package:sample8/home.dart';
import 'package:sample8/signup.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool HiddenPassword = true;

  late String email;
  late String password;

  void validator() {
    print(emailController.text);
    print(passwordController.text);
    if (formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home(name: emailController.text,)),
      );
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Invalid'),
                content: Text('Email or Password is wrong'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ));
    }
  }

  String? validatepass(value) {
    if (value.isEmpty) {
      return 'Requried';
    } else if (value.length < 8) {
      return 'should be atleast 8 charcaters';
    } else if (value.length > 18) {
      return 'Should be less than 18 charcaters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 436,
                padding: EdgeInsets.all(20),
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.amberAccent[700],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Welcome to',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'My Data',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Please Login TO Continue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Form(
                        key: formKey,
                        autovalidate: true,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  prefixIcon:
                                      Icon(Icons.email, color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: 'Enter Your Email',
                                  labelText: "Email"),
                              validator: MultiValidator([
                                RequiredValidator(errorText: 'Required'),
                                // EmailValidator(errorText: 'Enter valid Email'),
                              ]),
                              onChanged: (value) {
                                emailController.text;
                              },
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.password, color: Colors.black),
                                labelText: 'Password',
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      HiddenPassword = !HiddenPassword;
                                    });
                                    
                                  },
                                  child: Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'Enter your Password',
                                labelStyle: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: validatepass,
                              obscureText: HiddenPassword,
                              onChanged: (value) {
                                passwordController.text;
                              },
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 200,
                              height: 60,
                              child: RaisedButton(
                                onPressed: validator,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.amberAccent[700],
                                    fontSize: 36,
                                  ),
                                ),
                                color: Colors.black,
                                splashColor: Colors.amberAccent,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'FORGOT PASSWORD ?',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),
                    Center(
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 60,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                              ),
                            ),
                            color: Colors.amberAccent[700],
                          ),
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
