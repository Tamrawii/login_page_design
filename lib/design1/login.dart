

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isObsecure = true;

  void _toggle()
  {
    setState(() {
      isObsecure = !isObsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(90, 56, 253, 1),
            body: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Color.fromRGBO(90, 56, 253, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Login to your account',
                          style: TextStyle(
                              color: Colors.white54,
                              // fontSize: 18,
                              // fontWeight: FontWeight.w700),
                        ),
                        )],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // email
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email_outlined),
                                        border: OutlineInputBorder(),
                                        hintText: 'Enter Your Email Address'),
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              // pwrd
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Password',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    obscureText: isObsecure,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(isObsecure ? Icons.remove_red_eye : Icons.visibility_off),
                                        onPressed: ()
                                        {
                                          _toggle();
                                        },
                                      ),
                                      prefixIcon: Icon(Icons.lock_outlined),
                                        border: OutlineInputBorder(),
                                        hintText: 'Enter Your Password'),
                                  ),
                                  Row(
                                    children: [
                                      Text('Forget your password?'),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Click here',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  90, 56, 253, 0.5),
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 10,
                              ),

                              // login btn
                              SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    )),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(90, 56, 253, 1)),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              // or section
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 2,
                                    color: Colors.grey[300],
                                  ),
                                  Text('OR'),
                                  Container(
                                    width: 100,
                                    height: 2,
                                    color: Colors.grey[300],
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              // fb btn
                              SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                                    side: BorderSide(
                                        color: Color.fromRGBO(22, 111, 229, 0.5),
                                        width: 1),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Facebook',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(22, 111, 229, 0.5)
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 15,
                              ),

                              // gmail btn
                              SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                                    side: BorderSide(
                                        color: Color.fromRGBO(198, 48, 39, 0.5),
                                        width: 1),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Gmail',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromRGBO(198, 48, 39, 0.5)
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('You don\'t have an account yet?'),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Click here',
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                              90, 56, 253, 0.5),
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
