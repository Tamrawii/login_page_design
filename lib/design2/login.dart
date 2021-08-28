import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {

  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {

  bool isObsecured = true;

  void _Switch()
  {
    setState(() {
      isObsecured = !isObsecured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Hello', style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                        ),),
                        Text('.', style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(93, 157, 254, 1)
                        ),),
                      ],
                    ),

                    Row(
                      children: [
                        Text('Welcome', style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(93, 157, 254, 1)
                        ),),
                        Text(' Back', style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                        ),),
                      ],
                    ),

                    SizedBox(
                      height: 80,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(93, 157, 254, 1)),
                              ),
                            labelText: 'USERNAME',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              color: Colors.grey[400],
                              fontSize: 15
                            )
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),

                        TextFormField(
                          obscureText: isObsecured,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(93, 157, 254, 1)),
                              ),
                              fillColor: Colors.green,
                              labelText: 'PASSWORD',
                              suffixIcon: IconButton(
                                onPressed: ()
                                {
                                  _Switch();
                                },
                                icon: Icon(isObsecured ? Icons.remove_red_eye : Icons.visibility_off),
                              ),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey[400],
                                  fontSize: 15,
                              )
                          ),
                        ),
                        TextButton(onPressed: (){},
                            child: Text('Forget Password?', style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[400]
                            ),)
                        ),

                        SizedBox(
                          height: 40,
                        ),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: (){},
                              child: Text('LOGIN', style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              )),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(93, 157, 254, 1)),
                              ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: (){},
                            child: Text('Create Account', style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          ),
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
