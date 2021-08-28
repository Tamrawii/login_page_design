import 'package:flutter/material.dart';

class LoginScreen3 extends StatefulWidget {
  const LoginScreen3({Key? key}) : super(key: key);

  @override
  _LoginScreen3State createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {

  bool isObsecure = true;
  late var scaffoldKey = GlobalKey<ScaffoldState>();

  void _switch()
  {
    setState(() {
      isObsecure = !isObsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Welcome Back', style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700
                          ),),
                          Text('.', style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              color: Color.fromRGBO(253, 121, 168, 1)
                          ),),
                        ],
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      Image(image: AssetImage(
                          'assets/images/img2.png'
                      ),
                        height: 200,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            // userName
                            TextFormField(
                              cursorColor: Color.fromRGBO(234, 210, 239, 1),
                              decoration: InputDecoration(
                                hintText: 'UserName',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(186, 103, 200, 0.5)
                                ),
                                prefixIcon: Icon(Icons.person,
                                  color: Color.fromRGBO(186, 103, 200, 0.5)
                                  ,),
                                fillColor: Color.fromRGBO(234, 210, 239, 0.4),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            // pswrd
                            TextFormField(
                              obscureText: isObsecure,
                              cursorColor: Color.fromRGBO(234, 210, 239, 1),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(186, 103, 200, 0.5)
                                ),
                                prefixIcon: Icon(Icons.lock,
                                  color: Color.fromRGBO(186, 103, 200, 0.5)
                                  ,),
                                suffixIcon: IconButton(
                                  onPressed: ()
                                  {
                                    _switch();
                                  },
                                  icon: Icon(isObsecure ? Icons.remove_red_eye : Icons.visibility_off,
                                      color: Color.fromRGBO(186, 103, 200, 0.3)),
                                ),
                                fillColor: Color.fromRGBO(234, 210, 239, 0.4),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('LOGIN'),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      )),
                                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(253, 121, 168, 1)),

                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 240, 240, 1),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(100)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?', style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color.fromRGBO(253, 121, 168, 1)
                      ),),
                      TextButton(
                          onPressed: ()
                          {
                            scaffoldKey.currentState!.showBottomSheet(
                                    (context) => Container(
                                  height: 650,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(240, 240, 240, 1),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(30)
                                          )
                                      ),
                                  width: double.infinity,
                                  child:
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                                        child: Container(
                                          child: Center(
                                            child: Container(
                                              height: 8.0,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.grey[300],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Welcome', style: TextStyle(
                                                      fontSize: 23,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w700
                                                  ),),
                                                  Text('.', style: TextStyle(
                                                      fontSize: 23,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w900,
                                                      color: Color.fromRGBO(253, 121, 168, 1)
                                                  ),),
                                                ],
                                              ),

                                              SizedBox(
                                                height: 40,
                                              ),

                                              Image(image: AssetImage(
                                                  'assets/images/img2.png'
                                              ),
                                                height: 200,
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.all(40.0),
                                                child: Column(
                                                  children: [
                                                    //email
                                                    TextFormField(
                                                      cursorColor: Color.fromRGBO(234, 210, 239, 1),
                                                      keyboardType: TextInputType.emailAddress,
                                                      decoration: InputDecoration(
                                                        hintText: 'Email',
                                                        hintStyle: TextStyle(
                                                            color: Color.fromRGBO(186, 103, 200, 0.5)
                                                        ),
                                                        prefixIcon: Icon(Icons.email_rounded,
                                                          color: Color.fromRGBO(186, 103, 200, 0.5)
                                                          ,),
                                                        fillColor: Color.fromRGBO(234, 210, 239, 0.4),
                                                        filled: true,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(30),
                                                          borderSide: BorderSide.none,
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(
                                                      height: 20,
                                                    ),

                                                    // userName
                                                    TextFormField(
                                                      cursorColor: Color.fromRGBO(234, 210, 239, 1),
                                                      decoration: InputDecoration(
                                                        hintText: 'UserName',
                                                        hintStyle: TextStyle(
                                                            color: Color.fromRGBO(186, 103, 200, 0.5)
                                                        ),
                                                        prefixIcon: Icon(Icons.person,
                                                          color: Color.fromRGBO(186, 103, 200, 0.5)
                                                          ,),
                                                        fillColor: Color.fromRGBO(234, 210, 239, 0.4),
                                                        filled: true,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(30),
                                                          borderSide: BorderSide.none,
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(
                                                      height: 20,
                                                    ),

                                                    // pswrd
                                                    TextFormField(
                                                      obscureText: isObsecure,
                                                      cursorColor: Color.fromRGBO(234, 210, 239, 1),
                                                      decoration: InputDecoration(
                                                        hintText: 'Password',
                                                        hintStyle: TextStyle(
                                                            color: Color.fromRGBO(186, 103, 200, 0.5)
                                                        ),
                                                        prefixIcon: Icon(Icons.lock,
                                                          color: Color.fromRGBO(186, 103, 200, 0.5)
                                                          ,),
                                                        suffixIcon: IconButton(
                                                          onPressed: ()
                                                          {
                                                            _switch();
                                                          },
                                                          icon: Icon(isObsecure ? Icons.remove_red_eye : Icons.visibility_off,
                                                              color: Color.fromRGBO(186, 103, 200, 0.3)),
                                                        ),
                                                        fillColor: Color.fromRGBO(234, 210, 239, 0.4),
                                                        filled: true,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(30),
                                                          borderSide: BorderSide.none,
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(
                                                      height: 20,
                                                    ),

                                                    SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: ElevatedButton(
                                                        onPressed: (){},
                                                        child: Text('Sign Up'),
                                                        style: ButtonStyle(
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(30),
                                                              )),
                                                          backgroundColor: MaterialStateProperty.all(Color.fromRGBO(253, 121, 168, 1)),

                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              backgroundColor: Colors.transparent,
                            );
                          },
                          child: Text('Sign Up', style: TextStyle(
                            color: Color.fromRGBO(253, 121, 168, 1),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),)
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
