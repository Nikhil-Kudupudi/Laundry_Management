
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_wash/LaundryApp/auth/authentication.dart';
import 'package:we_wash/LaundryApp/home/mainpage.dart';
import 'package:we_wash/LaundryApp/initial/Signup.dart';
import 'package:we_wash/LaundryApp/auth/phone_authentication.dart';
var displayName;
var photo;
var name;
class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}
class _loginpageState extends State<loginpage> {
  @override
  bool _showloginpassword=false;
  final _loginpassword=TextEditingController();
  final _loginusername=TextEditingController();
  bool _validateloginusername=true;
  bool _validateloginpassword=true;
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15,)),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015,),),
                      Text("Welcome!!!",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015,
                      ),
                      ),
                      Text("Login Here...",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),),
                ),
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0,
                                left:MediaQuery.of(context).size.height * 0.03,
                                right: MediaQuery.of(context).size.height * 0.03),
                            child: TextField(
                              cursorColor: Colors.red.shade300,
                              keyboardType: TextInputType.text,
                              controller: _loginusername,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                prefixIcon: Icon(Icons.person,color: Colors.red.shade300,),
                                hintText: "email",
                                filled: true,
                                fillColor: Colors.white,
                                //errorText:_validateloginusername? "*this field is Required":null?"Ex:Mg@1234 ":null),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                                left:MediaQuery.of(context).size.height * 0.03,
                                right: MediaQuery.of(context).size.height * 0.03),
                            child: TextField(
                              cursorColor: Colors.red.shade300,
                              keyboardType: TextInputType.text,
                              obscureText: !this._showloginpassword,
                              controller: _loginpassword,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                prefixIcon: Icon(Icons.lock,color: Colors.red.shade300,),
                                suffixIcon: IconButton(icon:this._showloginpassword?Icon(Icons.visibility,color:Colors.red.shade300)
                                    :Icon(Icons.visibility_off_rounded,color:Colors.red.shade300),
                                  onPressed: (){
                                    setState(() {
                                      this._showloginpassword = !this._showloginpassword;
                                    });
                                  },
                                ),
                                hintText: "password",
                                filled: true,
                                fillColor: Colors.white,
                                errorText: _validateloginpassword?"*this field is required":(!passwordregex.hasMatch(_loginpassword.text)?"Ex:Mg@1234 ":null),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        /*setState(() {
                          _loginusername.text.isEmpty?_validateloginusername=true:_validateloginusername=false;
                          _loginpassword.text.isEmpty? _validateloginpassword=true:_validateloginpassword=false;
                        });
                        if (_loginusername.text.isNotEmpty && _loginpassword.text.isNotEmpty && emailregex.hasMatch(_loginusername.text) && passwordregex.hasMatch(_loginpassword.text) ){

                        }*/
                        AuthClass().signIN(_loginusername.text,_loginpassword.text).then((value){
                          if(value=="Welcome"){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                mainpage()));
                          }
                          else{
                            print(value);
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.height*0.25,
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.1,
                            right: MediaQuery.of(context).size.height*0.1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red.shade300,
                        ),
                        child: Center(
                          child: Text(
                            "Login",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account ? "),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => signup()));
                          },
                          child: Text("Sign Up",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                    Container(
                        child: InkWell(
                          onTap: (){
                            AuthClass().signWithGoogle().then((UserCredential value) {
                              displayName = value.user.displayName;
                              photo=value.user.photoURL;
                              name=value.user.email;
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>PhoneAuth()));

                            });
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.height*0.6,
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.05,
                                right: MediaQuery.of(context).size.height*0.05),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepOrange.shade400,
                            ),
                            child: Center(
                              child: Text(
                                "Continue with Google",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0
                              ),
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}