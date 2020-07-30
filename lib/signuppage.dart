import 'package:flutter/material.dart';
import './networkhandler.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final _globalKey = GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _collegecontroller = TextEditingController();
  TextEditingController _yearcontroller = TextEditingController();
  String errorText;
  bool validate = false;
  bool circular = false;
  checkUser() async {
    if (_emailcontroller.text.length == 0 || !_emailcontroller.text.contains('@') ||!_emailcontroller.text.contains('.')) {
      setState(() {
        circular = false;
        validate = false;
        errorText = "Invalid email";
      });
    }
   else if(already==true){
      setState(() {
        circular = false;
        validate = false;
        errorText = "Email already exists";
      });
   }
 
    else if(errorText!="email can't be empty" ||errorText!="Account already present"){
      setState(() {
        validate=true;
        circular=false;
      });
    }
    
  }

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
                      style: TextStyle(color: Colors.white),
                      controller: _namecontroller,
                      textInputAction: TextInputAction.none,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) return "Name can't be empty";

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
                          // hintText: 'Enter your product title',
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Full Name'),
                      onChanged: (String value) {
                        setState(() {});
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _emailcontroller,
                     
                      textInputAction: TextInputAction.none,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        errorText: validate?null:errorText,
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
                        setState(() {
                             _emailcontroller.addListener(() {already=false;});
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _passwordcontroller,
                      textInputAction: TextInputAction.none,
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
                          // hintText: 'Enter your product title',
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Password'),
                      onChanged: (String value) {
                        setState(() {});
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _collegecontroller,
                      validator: (value) {
                        if (value.isEmpty) return "College name can't be empty";

                        return null;
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
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
                          labelText: 'College Name'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _yearcontroller,
                      keyboardType: TextInputType.number,
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
                          labelText: 'Year of admission'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
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

                  circular
                      ? CircularProgressIndicator()
                      : FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              side: BorderSide(color: Colors.white)),
                          padding: EdgeInsets.only(left: 50, right: 50),
                          // color: Theme.of(context).buttonColor,
                          textColor: Colors.white,
                          child: Text('Create Account'),
                          onPressed: () async{
                            setState(() {
                              circular=true;
                            });
                            // Navigator.pushReplacement(   // replcet the curent layout unlike push that just creates new page
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext cotext) => HomePage()));

                            // Using Routes
                            await checkUser();
                            if (_globalKey.currentState.validate() && validate) {
                              Map<String, String> data = {
                                "email": _emailcontroller.text,
                                "username": _namecontroller.text,
                                "password": _passwordcontroller.text,
                                "yearJoined": _yearcontroller.text,
                                "collegeName": _collegecontroller.text
                              };

                              print(data);
                            
                              await networkHandler
                                  .post("/signup", data)
                                  .catchError((error) {
                                    showDialog(context: context,builder: (ctx) => AlertDialog(title: Text("An error occured"),content: Text(error.toString()),));
                                setState(() {
                                  errorText = error.toString();
                                  circular = false;
                                  validate = false;

                                });
                              });
                              setState(() {
                                circular=false;
                              });
                              
                              showDialog(context: context,builder: (ctx) => AlertDialog(title: Text("Account created"),content: Text('Successful!')));                    
              
                            }
                            else{
                              setState(() {
                                circular=false;
                              });
                            }
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
