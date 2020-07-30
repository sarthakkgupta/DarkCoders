import 'package:flutter/material.dart';
import 'package:s/networkhandler.dart';
import 'package:s/tabscreen.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthpageState();
  }
}

class _AuthpageState extends State<AuthPage> {
  final _globalKey = GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 4, // default value
      //   title: Text('Authenticate'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: NetworkImage(
                'https://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop)),
        ),
        padding: EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text(
                      'After Covid',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) return "Username can't be empty";
                        if (!value.contains('@')) return 'email is not valid';
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          // hintText: 'Enter your product title',
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Email Address'),
                      onChanged: (String value) {
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) return "Password can't be empty";

                      if (value.length < 6)
                        return 'password length must be atleast 6 characters';
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // hintText: 'Enter your product description',
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Password'),
                    onChanged: (String value) {
                      setState(() {});
                    },
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 25, right: 5),
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  // SwitchListTile(
                  //   title: Text('I accept the Terms & Conditions'),
                  //   value: _acceptTerms,
                  //   onChanged: (bool value) {
                  //     setState(() {
                  //       _acceptTerms = value;
                  //     });
                  //   },
                  // ),
                  SizedBox(
                    height: 25,
                  ),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        side: BorderSide(color: Colors.white)),
                    padding: EdgeInsets.only(left: 50, right: 50),
                    // color: Theme.of(context).buttonColor,
                    textColor: Colors.white,
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.pushReplacement(   // replcet the curent layout unlike push that just creates new page
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext cotext) => TabsScreen()));

                    // Using Routes
                   
                    
                    },
                  ),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        side: BorderSide(color: Colors.white)),
                    padding: EdgeInsets.only(left: 50, right: 50),
                    // color: Theme.of(context).buttonColor,
                    textColor: Colors.white,
                    child: Text('Sign Up'),
                    onPressed: () {
                      // Navigator.pushReplacement(   // replcet the curent layout unlike push that just creates new page
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext cotext) => HomePage()));

                      // Using Routes

                      Navigator.pushNamed(context, '/signup');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
