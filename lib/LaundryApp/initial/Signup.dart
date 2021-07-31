import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_wash/LaundryApp/cart/bookings.dart';
import 'package:we_wash/LaundryApp/details/userprofile.dart';
import 'package:we_wash/LaundryApp/home/entrypage.dart';
import 'package:we_wash/LaundryApp/home/mainpage.dart';
import 'package:we_wash/LaundryApp/initial/login.dart';
import 'package:we_wash/LaundryApp/auth/phone_authentication.dart';

import '../auth/authentication.dart';

RegExp userregex=new RegExp(r"[a-zA-Z]+\w[a-zA-Z]*");
RegExp passwordregex =new RegExp(r"^[a-zA-Z]*");
RegExp emailregex=new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") ;

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}
class _signupState extends State<signup> {
  AudioCache _audioCache;
  void initState() {
    super.initState();
    _audioCache = AudioCache(
      prefix: 'audio/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );
  }
  @override
  bool _isLoggedin=false;
  int currentIndex=0;
  final List<Widget> _children=[
    entrypage(),
    bookingspage(),
    userprofile()
  ];

  final FocusNode _passwordFocusNode=FocusNode();
  final FocusNode _usernameFocusNode=FocusNode();
  final FocusNode _emailFocusNode=FocusNode();

  bool _showPassword=false;
  final _username=TextEditingController();
  final _password=TextEditingController();
  final _email=TextEditingController();
  bool _validateuser=true;bool _validatepassword=true;bool _validateemail=true;


  Widget buildbody(){
    if(_isLoggedin){
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: currentIndex,
          items:
          [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red.shade300,),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.reorder, color: Colors.red.shade300,),
                label:"Bookings"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.red.shade300,),
              label: "Profile",
            ),
          ],
          backgroundColor: Colors.grey.shade300,
        ),
        //backgroundColor: Colors.white,
        body: _children[currentIndex],
      );
    }
    else{
      return Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Form(

              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1,),),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015,),),
                      Text("Create Your Account",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.red.shade300,
                        ),),
                    ],
                  ),
                  Container(
                    child: TextFormField(
                      cursorColor: Colors.red.shade300,
                      controller: _username,
                      focusNode: _usernameFocusNode,
                      key: ValueKey('name'),
                      onEditingComplete: ()=>FocusScope.of(context).requestFocus(_usernameFocusNode),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.person,color: Colors.red.shade300),
                        hintText: "Username",
                        filled: true,
                        fillColor: Colors.white,
                        errorText: _validateuser?"this field is Required*":(!userregex.hasMatch(_username.text)?"enter  alphabets only":null),
                        errorStyle: TextStyle(color:Colors.red.shade300),
                      ),
                    ),
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.height * 0.03,
                      right: MediaQuery.of(context).size.height * 0.03,),
                  ),
                  Container(
                    child: TextField(
                      controller: _password,
                      obscureText: !this._showPassword,
                      cursorColor: Colors.red.shade300,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: Icon(Icons.lock,color: Colors.red.shade300),
                          suffixIcon: IconButton(icon:this._showPassword?Icon(Icons.visibility,color:Colors.red.shade300):Icon(Icons.visibility_off_rounded,color:Colors.red.shade300),
                            onPressed: (){
                              _audioCache.play('button-28.mp3');
                              setState(() {
                                this._showPassword = !this._showPassword;
                              });
                            },
                          ),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          errorText:_validatepassword? "this field is Required*":(!passwordregex.hasMatch(_password.text)?"Ex:Mg@1234 ":null),
                          errorStyle: TextStyle(color:Colors.red.shade300)
                      ),
                    ),
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                      left: MediaQuery.of(context).size.height * 0.03,
                      right: MediaQuery.of(context).size.height * 0.03,),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _email,
                      cursorColor: Colors.red.shade300,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: Icon(Icons.email,color: Colors.red.shade300),
                          hintText: "E-mail",
                          filled: true,
                          fillColor: Colors.white,
                          errorText:_validateemail ? "this field is Required*":(!emailregex.hasMatch(_email.text)?"enter valid email":null),
                          errorStyle: TextStyle(color:Colors.red.shade300)
                      ),
                    ),
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                      left: MediaQuery.of(context).size.height * 0.03,
                      right: MediaQuery.of(context).size.height * 0.03,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      _audioCache.play('soft-click.wav');

                      AuthClass().createAccount(email:_email.text.trim(),password:_password.text.trim()).then((value){
                        if(value=="Account created"){

                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>PhoneAuth()));
                        }
                        else{
                          print(value);
                        }



                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(value)));
                      });





                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.height*0.25,
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.1,
                          right: MediaQuery.of(context).size.height*0.1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0
                        ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account ? "),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => loginpage()));
                        },
                        child: Text("Login",style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  Center(
                    child: Text("Or",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => mainpage()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.height*0.6,
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.05,
                          right: MediaQuery.of(context).size.height*0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo,
                      ),
                      child: Center(
                        child: Text(
                          "Continue with Facebook",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0
                        ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      );
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
        body: ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: buildbody()
        )
    );
  }
  void onTabTapped(int index){

    setState(() {
      currentIndex=index;
    });
  }
}