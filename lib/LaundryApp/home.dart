

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
RegExp userregex=new RegExp(r"[a-zA-Z]+\w[a-zA-Z]*"); RegExp passwordregex =new RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
RegExp emailregex=new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") ;

class lgorsgpage extends StatefulWidget {
  @override
  _lgorsgpageState createState() => _lgorsgpageState();
}
class _lgorsgpageState extends State<lgorsgpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,)
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25,)
                      ),
                      Text("We",style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.red.shade300,
                        fontStyle: FontStyle.italic
                      ),),
                      Text("Wash",style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic
                      ),),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05,)
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => loginpage()));
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
                        child: Text("Login",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0
                        ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => signup()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.height*0.25,
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.1,
                          right: MediaQuery.of(context).size.height*0.1),
                      decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red.shade300,
                                width: 2
                            ),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        ),
                      child: Center(
                        child: Text("Sign Up",style: TextStyle(
                          color: Colors.red.shade300,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0
                        ),
                        ),
                      ),
                    ),
                  ),
              ],
            )
          ],
        )
    ),
      );
  }
}
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
      resizeToAvoidBottomPadding: false,
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
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07,
                                  left:MediaQuery.of(context).size.height * 0.03,
                                  right: MediaQuery.of(context).size.height * 0.03),
                              child: TextField(
                                controller: _loginusername,
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.black,width: 2),
                                    ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,width: 2),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                prefixIcon: Icon(Icons.person),
                                  hintText: "Username/Phone Number",
                                  filled: true,
                                  fillColor: Colors.white,
                                  errorText:_validateloginusername? "this field is Required*":(!userregex.hasMatch(_loginusername.text)?"Ex:Mg@1234 ":null),

                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                                  left:MediaQuery.of(context).size.height * 0.03,
                                  right: MediaQuery.of(context).size.height * 0.03),
                              child: TextField(
                                obscureText: !this._showloginpassword,
                                controller: _loginpassword,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(color: Colors.black,width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,width: 2),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(icon:this._showloginpassword?Icon(Icons.visibility,color:Colors.blueAccent):Icon(Icons.visibility_off_rounded,color:Colors.grey),
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
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                              ),
                        ),
                      ),
                      Text("forgot password",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                            ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            _loginusername.text.isEmpty?_validateloginusername=true:_validateloginusername=false;
                            _loginpassword.text.isEmpty? _validateloginpassword=true:_validateloginpassword=false;

                          });
                          if (_loginusername.text.isNotEmpty && _loginpassword.text.isNotEmpty && userregex.hasMatch(_loginusername.text) && passwordregex.hasMatch(_loginpassword.text) ){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => mainpage()));
                          }
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
class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}
class _signupState extends State<signup> {
  @override
  bool _showPassword=false;
  final _username=TextEditingController();
  final _password=TextEditingController();
  final _email=TextEditingController();
  bool _validateuser=true;bool _validatepassword=true;bool _validateemail=true;



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
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

                         cursorColor: Colors.black,
                         controller: _username,
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
                           hintText: "Username/Phone Number",
                           filled: true,
                           fillColor: Colors.white,
                             errorText: _validateuser?"this field is Required*":(!userregex.hasMatch(_username.text)?"enter  alphabets only":null),
                             errorStyle: TextStyle(color:Colors.red),
                         ),
                         
                       ),
                       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04,
                         left: MediaQuery.of(context).size.height * 0.03,
                         right: MediaQuery.of(context).size.height * 0.03,),
                     ),

                    Container(
                      child: TextFormField(
                        controller: _password,
                        obscureText: !this._showPassword,
                        cursorColor: Colors.black,
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
                            suffixIcon: IconButton(icon:this._showPassword?Icon(Icons.visibility,color:Colors.blueAccent):Icon(Icons.visibility_off_rounded,color:Colors.grey),
                              onPressed: (){
                                setState(() {
                                  this._showPassword = !this._showPassword;
                                });
                              },
                            ),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                            errorText:_validatepassword? "this field is Required*":(!passwordregex.hasMatch(_password.text)?"Ex:Mg@1234 ":null),
                            errorStyle: TextStyle(color:Colors.red)
                        ),
                         
                      ),
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                        left: MediaQuery.of(context).size.height * 0.03,
                        right: MediaQuery.of(context).size.height * 0.03,),
                    ),
                    Container(
                      child: TextFormField(

                        controller: _email,
                        cursorColor: Colors.black,
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
                            errorStyle: TextStyle(color:Colors.red)
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
                        setState(() {
                          _username.text.isEmpty?_validateuser=true:_validateuser=false;
                          _password.text.isEmpty? _validatepassword=true:_validatepassword=false;
                          _email.text.isEmpty?_validateemail=true:_validateemail=false;
                        });

                        if ((userregex.hasMatch(_username.text)&&passwordregex.hasMatch(_password.text)&& emailregex.hasMatch(_email.text))&&(_username.text.isNotEmpty && _password.text.isNotEmpty &&
                            _email.text.isNotEmpty)){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => mainpage()));
                        }
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
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.height*0.6,
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.05,
                            right: MediaQuery.of(context).size.height*0.05),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrange,
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
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();
}
class _mainpageState extends State<mainpage> {
  int currentIndex=0;
  final List<Widget> _children=[
    entrypage(),
    bookingspage(),
    userprofile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.red.shade300,),
            label: 'home',

        ),
        BottomNavigationBarItem(icon: Icon(Icons.reorder, color: Colors.red.shade300,),
            label:"bookings"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.red.shade300,),
            label: "profile",
        ),
      ],
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.white,
      body: _children[currentIndex],
    );
  }
  void onTabTapped(int index){
    setState(() {
      currentIndex=index;
    });
  }
}
class entrypage extends StatefulWidget {
  @override
  _entrypageState createState() => _entrypageState();
}
class _entrypageState extends State<entrypage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.42,
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05,),
            decoration: BoxDecoration(
              color: Colors.red.shade300,
            ),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,),),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*0.03)),
                    Text("We",style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontStyle: FontStyle.italic
                    ),),
                    Text("Wash",style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic
                    ),),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,),),
                datetime(),
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,),),
                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => selecttype()));
                  },
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text("DONE",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.23,
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2
                      )
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/scissor.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03,
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                            width: 2
                        ),
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/donate (2).jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                 padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.30)
              ),
              Text("Resize",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),),
              Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.16)
              ),
              Text("Donate",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02)
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
class datetime extends StatefulWidget {
  @override
  _datetimeState createState() => _datetimeState();
}
class _datetimeState extends State<datetime> {
  GlobalKey<FormState> _fKey = GlobalKey<FormState>();
  String yearMonthDay, yearMonthDayTime;
  TextEditingController ymdController = TextEditingController();
  TextEditingController ymdtController = TextEditingController();
  bool autovalidate = false; bool _validatedate=false;
  yearMonthDayPicker() async {
    final year = DateTime.now().year;
    final DateTime dateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(year),
      lastDate: DateTime(year + 10),
    );
    if (dateTime != null) {
      ymdController.text = dateTime.toString().split(' ')[0];
    }
  }
  yearMonthDayTimePicker() async {
//    final year = DateTime.now().year;
    String hour, min;
    Future<TimeOfDay> dateTime = showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    /*final DateTime dateTime = await showDatePicker(
      context: context,
     initialDate: DateTime.now(),
      firstDate: DateTime(year),
     lastDate: DateTime(year + 10),
    );*/
   if (dateTime != null) {
      final TimeOfDay pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: 0, minute: 0),
      );
      if (pickedTime != null) {
        if (pickedTime.hour < 10) {
          hour = '0' + pickedTime.hour.toString();
        } else {
          hour = pickedTime.hour.toString();
        }
        if (pickedTime.minute < 10) {
          min = '0' + pickedTime.minute.toString();
        } else {
          min = pickedTime.minute.toString();
        }
        ymdtController.text = '$hour:$min';
      }
    }
  }
  submit() {
    setState(() => autovalidate = true);
    if (!_fKey.currentState.validate()) {
      return;
    }
    _fKey.currentState.save();
    print('year-month-day: $yearMonthDay');
    print('year-month-day-time: $yearMonthDayTime');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _fKey,
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: yearMonthDayPicker,
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: ymdController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Icon(Icons.calendar_today),
                      fillColor: Colors.white,
                  //    labelText: 'dd-mm-yyyy',
                      filled: true,
                      errorText: _validatedate ?"this field is required":null,
                      errorStyle: TextStyle(color: Colors.white)
                    ),
                    onSaved: (val) {
                      yearMonthDay = ymdController.text;
                    },
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "*This field is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
             Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
             ),),
              GestureDetector(
                onTap: yearMonthDayTimePicker,
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: ymdtController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      prefixIcon: Icon(Icons.access_time),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    onSaved: (val) {
                      yearMonthDayTime = ymdtController.text;
                    },
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Year-Month-Date-Time is necessary';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
      ),
    ),
    ),
    );
  }
}
class bookingspage extends StatefulWidget {
  @override
  _bookingspageState createState() => _bookingspageState();
}
class _bookingspageState extends State<bookingspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
class userprofile extends StatefulWidget {
  @override
  _userprofileState createState() => _userprofileState();
}
class _userprofileState extends State<userprofile> {
  final List useroptions = [
    "Account Details",
    "Bookings",
    "Help",
    "feedback",
    "logout",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),),
                  ),
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04,
                    left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02,),
                  child: ListView.builder(
                      itemCount: useroptions.length,
                      itemBuilder: (BuildContext context, int index){
                        return Card(
                          margin: EdgeInsets.all(10.0),
                          elevation: 6.0,
                          color: Colors.grey.shade300,
                          child: ListTile(
                            title: Text(useroptions[index],style: TextStyle(
                                color: Colors.red.shade300,
                            ),),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.red.shade300,),
                          ),
                        );
                      }
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
class selecttype extends StatefulWidget {
  @override
  _selecttypeState createState() => _selecttypeState();
}
class _selecttypeState extends State<selecttype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
          Container(
          height: 100,
          ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),),
                ),
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.height * 0.025,
                  right: MediaQuery.of(context).size.height * 0.02,),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => detailspage()));
                                },
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.08,
                                width: MediaQuery.of(context).size.height*0.4,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.025,
                                    left: MediaQuery.of(context).size.height*0.03),
                                child: Text("Men",style: TextStyle(
                                  color: Colors.red.shade300,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                            ),

                      ],
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
class detailspage extends StatefulWidget {
  @override
  _detailspageState createState() => _detailspageState();
}
class _detailspageState extends State<detailspage> {
  int selectedposition = 0;
  String dropdownValue = 'Andhra Pradesh';
  List<String> States=['Andhra Pradesh', 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh', 'Goa', 'Gujarat', 'Haryana', 'Himachal Pradesh', 'Jammu and Kashmir', 'Jharkhand', 'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur', 'Meghalaya', 'Mizoram', 'Nagaland', 'Odisha', 'Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu', 'Telangana', 'Tripura', ' Uttarakhand', 'Uttar Pradesh', 'West Bengal', 'Andaman and Nicobar Islands', ''
      'Chandigarh', 'Dadra and Nagar Haveli', 'Daman and Diu', 'Delhi', 'Lakshadweep', 'Puducherry'];
String Name,House_no,SAC,CTV;
int Phno,Pincode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 110,
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015,),
                  ),
                  Text("Enter Your Details!!",
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),),
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,
                    ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            child: TextField(
                              cursorColor: Colors.red.shade300,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                ),
                                hintText: "Name",
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              onChanged: (text){
                                Name=text;
                              },
                            ),
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.025,
                            right: MediaQuery.of(context).size.height*0.025,),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,)
                          ),
                          Container(
                            child: TextField(
                              cursorColor: Colors.red.shade300,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red.shade300,width: 2),
                                ),
                                hintText: "Phone Number",
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              onChanged: (text){
                                Phno=int.parse(text);
                              },
                            ),
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.025,
                              right: MediaQuery.of(context).size.height*0.025,),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,
                              ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015,
                              ),
                              ),
                              Text("Address:",style:
                                TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                ),),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.025,
                            right: MediaQuery.of(context).size.height * 0.025,),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    hintText: "Pin Code",
                                  ),
                                  onChanged: (text){
                                    Pincode=int.parse(text);
                                  },
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
                                ),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    hintText: "House No.,Building name",
                                  ),
                                  onChanged: (text){
                                    House_no=text;
                                  },
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
                                ),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    hintText: "Street,Area,Colony",
                                  ),
                                  onChanged: (text){
                                    SAC=text;
                                  },
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
                                ),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    hintText: "City/Town/Village",
                                  ),
                                  onChanged: (text){
                                    CTV=text;
                                  },
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
                                ),


                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_drop_down_outlined),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: States
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                                 Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05)
                                ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => mypay()));
                              },
                              child: Container(
                                height: 45,
                                width: 300,
                                child: Center(
                                  child: Text("DONE",style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red.shade300,
                                ),
                            ),
                            ),
                              ],
                            ),
                          ),
                        ],
                      )
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
class mypay extends StatefulWidget {
  @override
  String Name,House_no,SAC,CTV,dropdownValue;
  int Phno,Pincode;
  mypay({ Key key ,this.Name,this.Phno,this.Pincode,this.House_no,this.SAC,this.CTV,this.dropdownValue }):super(key:key);
  _mypayState createState() => _mypayState(Name,Phno,Pincode,House_no,SAC,CTV,dropdownValue);
}
class _mypayState extends State<mypay> {
  String Name , House_no , SAC ,CTV ,dropdownValue;
  int Phno , Pincode;
  _mypayState(this.Name, this.Phno ,this.Pincode, this.House_no,this.SAC,this.CTV,this.dropdownValue);

  @override


  Widget build(BuildContext context) {
    var selectedposition;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        title: Text("Payment Details"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.grey,
          ),
          Container(
            height: 80,
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width*0.7,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.black,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Coupoun Code",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02)),
                InkWell(
                 // borderRadius: BorderRadius.circular(20.0),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => lastpage()));
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    color: Colors.red.shade300,
                    child: Center(
                      child: Text("APPLY",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text("Select payment option :",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),),
                Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02,),
                ),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.015,
                    right: MediaQuery.of(context).size.height*0.015,),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      RadioListTile(
                        value: 0,
                        groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                            selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Cash on delivery"),
                      ),
                      RadioListTile(
                        value: 1,
                       groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                            selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Debit Card/Credit Card"),
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                            selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Net Banking"),
                      ),
                      Text("UPI Payments",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                            selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("PhonePe"),
                      ),
                      RadioListTile(
                        value: 4,
                        groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                           selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Google Pay"),
                      ),
                      Text("Wallet",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),),
                      RadioListTile(
                        value: 5,
                        groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                            selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Paytm"),
                      ),
                      RadioListTile(
                        value: 6,
                        groupValue: selectedposition,
                        onChanged: (val){
                          print("selected $val");
                          setState(() {
                           selectedposition = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Amazon Pay"),
                      ),
                    ],
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
class lastpage extends StatefulWidget {
  @override
  _lastpageState createState() => _lastpageState();
}
class _lastpageState extends State<lastpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Image(
                      image: AssetImage("assets/like.jpg"),
                    ),
                  ),
                  Text("Your order is placed.",style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01)
                  ),
                  Text("We will reach you with in an hour.Thank You!!",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0
                  ),),
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05)
                  ),
                  Text("Return to Home Page",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),),
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => mainpage()));
                    },
                    child: Container(
                      height: 40,
                      width: 90,
                      color: Colors.red.shade300,
                      child: Center(
                        child: Text("OK",style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.04)
                  ),
                  Container(
                    height: 200,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02,
                        right: MediaQuery.of(context).size.width*0.02),
                    color: Colors.grey.shade200,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07,
                          ),),
                          Text("Liked the App,Please rate it.",style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600,
                          ),),
                          Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,
                          ),),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.24,
                              ),),
                              InkWell(
                                onTap: (){

                                },
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  color: Colors.red.shade300,
                                  child: Center(
                                    child: Text("YES",style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03,
                              ),),
                              InkWell(
                                onTap: (){

                                },
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  color: Colors.red.shade300,
                                  child: Center(
                                    child: Text("NO",style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}
class billsharing extends StatefulWidget {
  @override
  _billsharingState createState() => _billsharingState();
}
class _billsharingState extends State<billsharing> {
  int _tippercentage=0;
  int _personcount=0;
  double _billamount =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade100,
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Total per person", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("\Rs. ${calculatetotalperperson(_billamount, _personcount, _tippercentage)}", style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blueGrey.shade100,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      prefixText: " ",
                      prefixIcon: Icon(Icons.attach_money),
                    ),
                    onChanged: (String value){
                      try{
                        _billamount = double.parse(value);
                      }catch(exception){
                        _billamount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("split", style: TextStyle(
                          color: Colors.grey.shade700
                      ),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(() {
                                if(_personcount>1){
                                  _personcount--;
                                }
                                else{
                                  //do nothing
                                }
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.grey,
                              ),
                              child: Center(
                                child: Text(
                                  "-",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                          ),
                          Text("$_personcount", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0
                          ),),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _personcount++;
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.grey,
                              ),
                              child: Center(
                                child: Text(
                                  "+",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Tip", style: TextStyle(
                        color: Colors.grey,
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                      ),
                      Text("\Rs. ${calculatetotaltip(_billamount, _personcount, _tippercentage)}", style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                  //slider
                  Column(
                    children: <Widget>[
                      Text("$_tippercentage%", style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Slider(
                          min: 0,
                          max: 100,
                          activeColor: Colors.black,
                          inactiveColor: Colors.grey,
                          //divisions: ,
                          value: _tippercentage.toDouble(),
                          onChanged: (double newvalue){
                            setState(() {
                              _tippercentage = newvalue.round();
                            });
                          }
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  calculatetotalperperson(double billamount, int splitby, int tippercentage){
    var totalperperson = (calculatetotaltip(billamount, splitby, tippercentage)+billamount)/splitby;
    return totalperperson.toStringAsFixed(2);
  }
  calculatetotaltip(double billamount, int splitby, int tippercentage){
    double totaltip=0.0;
    if(billamount<0||billamount.toString().isEmpty||billamount==null){
      // do nothing
    }
    else{
      totaltip=(billamount*tippercentage)/100;
    }
    return totaltip;
  }
}
class custombutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar =SnackBar(content: Text("no connection. Try again!"),
          backgroundColor: Colors.greenAccent,);
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Retry"),
      ),
    );
  }
}
class newone extends StatelessWidget {

  _tapbutton(){
    debugPrint("search here");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp", textDirection: TextDirection.ltr,),
        centerTitle: false,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.dehaze), onPressed: () => debugPrint("tapped")),
          IconButton(icon: Icon(Icons.search), onPressed: _tapbutton)
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(Icons.cast),
          onPressed: () => debugPrint("cast it!!")),
      bottomNavigationBar: BottomNavigationBar(selectedLabelStyle: TextStyle(color: Colors.blueAccent),
        unselectedLabelStyle: TextStyle(color: Colors.pinkAccent),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "first"),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label:"second"),
      ], onTap: (int index) => debugPrint("tapped item: $index"),),
      backgroundColor: Colors.orange,
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              custombutton()

              /*InkWell(
                child: Text("welcome",
                  style: TextStyle(fontSize: 23.4),),
        onTap: () => debugPrint("pressed or tapped"),
          )*/
            ],
          )
      ),
    );
  }
}