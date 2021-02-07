import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

RegExp userregex=new RegExp(r"[a-zA-Z]+\w[a-zA-Z]*");
RegExp passwordregex =new RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
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
                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.30),
                      child: Row(
                        children: <Widget>[
                          Text("We",style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width*0.1,
                            fontWeight: FontWeight.w700,
                            color: Colors.red.shade300,
                            fontStyle: FontStyle.italic
                          ),),
                          Text("Wash",style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width*0.1,
                            fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic
                          ),),
                        ],
                      ),
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
                      width: MediaQuery.of(context).size.width*0.25,
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,
                      right: MediaQuery.of(context).size.width*0.1),
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
                      width: MediaQuery.of(context).size.width*0.25,
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,
                          right: MediaQuery.of(context).size.width*0.1),
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
                                  hintText: "Username/Phone Number",
                                  filled: true,
                                  fillColor: Colors.white,
                                  errorText:_validateloginusername? "*this field is Required":(!userregex.hasMatch(_loginusername.text)?"Ex:Mg@1234 ":null),
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
                         cursorColor: Colors.red.shade300,
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
                             errorStyle: TextStyle(color:Colors.red.shade300),
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
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width*0.43,
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
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5)),
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
  String yearMonthDay, yearMonthDayTime;
  TextEditingController ymdController = TextEditingController();
  TextEditingController ymdtController = TextEditingController();
  bool _validatedate=true,_validatetime=true;
  yearMonthDayPicker() async {
    final year = DateTime.now().year;
    final DateTime dateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(year),
      lastDate: DateTime(year + 1),
    );
    if (dateTime != null) {
      //ymdController.text = DateFormat.('en_US').parse(dateTime.toString().split(' ')[0]).toString();
      ymdController.text=formatDate(dateTime, [dd,'-',M,'-',yyyy]).toString();
    }
  }
  yearMonthDayTimePicker() async {
//    final year = DateTime.now().year;
    String hour, min;
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
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
                      prefixIcon: Icon(Icons.calendar_today,color: Colors.black,),
                      hintText: "Please Select Date",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    onSaved: (val) {
                      yearMonthDay = ymdController.text;
                    },
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                       // return "*This field is required";
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
                      prefixIcon: Icon(Icons.access_time,color: Colors.black,),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Please Select Time",
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                    onSaved: (val) {
                      yearMonthDayTime = ymdtController.text;
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,),),
              InkWell(
                onTap: (){
                  setState(() {
                    ymdController.text.isEmpty?_validatedate=true:_validatedate=false;
                    ymdtController.text.isEmpty?_validatetime=true:_validatetime=false;
                  });
                  if(ymdtController.text.isNotEmpty&&ymdController.text.isNotEmpty){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => selecttype()));
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width*0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text("DONE",style: TextStyle(
                        color: Colors.red.shade300,
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.height * 0.025,
                  right: MediaQuery.of(context).size.height * 0.025,),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => menselectpage()));
                                },
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.08,
                                width: MediaQuery.of(context).size.width*0.9,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.022,
                                    left: MediaQuery.of(context).size.height*0.03),
                                child: Text("Men",style: TextStyle(
                                  color: Colors.red.shade300,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                            ),
                        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015)),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => womenselectpage()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.022,
                                left: MediaQuery.of(context).size.height*0.03),
                            child: Text("Women",style: TextStyle(
                              color: Colors.red.shade300,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015)),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => kidsselectpage()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.022,
                                left: MediaQuery.of(context).size.height*0.03),
                            child: Text("Kids (3-10 Years)",style: TextStyle(
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
                                  cursorColor: Colors.black,
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
                                  cursorColor: Colors.black,
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
                                  cursorColor: Colors.black,
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
                                  cursorColor: Colors.black,
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
                              isExpanded: true,
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_drop_down_outlined),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(color: Colors.black),
                              underline: Container(
                                height: 1.5,
                                color: Colors.grey.shade400,
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
                                  child: Text("   "+value),
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
enum Paymentoption{COD,Debit_or_Credit,Net_Banking,PhonePe,Gpay,Paytm,Amazon_Pay}
class mypay extends StatefulWidget {
  @override
  _mypayState createState() => _mypayState();
}
class _mypayState extends State<mypay> {
  bool validatecoupoun=true;
  Paymentoption _paymentoption=Paymentoption.COD;
  List<String> checkCoupoun=["Firsttime","secondVisit","developed","experienced"];
  final entercoupoun=TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                    controller: entercoupoun,
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
                      errorText: entercoupoun.text.isEmpty?null:(checkCoupoun.contains(entercoupoun.text)?"coupoun valid":"not found"),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02)),
                InkWell(
                 // borderRadius: BorderRadius.circular(20.0),
                  onTap: (){
                  if(entercoupoun.text.isEmpty || checkCoupoun.contains(entercoupoun.text) ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => lastpage()));
                  }



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
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.COD,
                        groupValue: _paymentoption,
                        onChanged: ( Paymentoption value){
                          print("selected $value");
                          setState(() {
                            _paymentoption = value;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Cash on delivery"),
                      ),
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.Debit_or_Credit,
                       groupValue: _paymentoption,
                        onChanged: (Paymentoption value){
                          print("selected $value");
                          setState(() {
                            _paymentoption = value;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Debit Card/Credit Card"),
                      ),
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.Net_Banking,
                        groupValue:_paymentoption,
                        onChanged: (Paymentoption value){
                          print("selected $value");
                          setState(() {
                            _paymentoption = value;
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
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.PhonePe,
                        groupValue: _paymentoption,
                        onChanged: (Paymentoption val){
                          print("selected $val");
                          setState(() {
                            _paymentoption= val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("PhonePe"),
                      ),
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.Gpay,
                        groupValue: _paymentoption,
                        onChanged: (Paymentoption val){
                          print("selected $val");
                          setState(() {
                           _paymentoption = val;
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
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.Paytm,
                        groupValue: _paymentoption,
                        onChanged: (Paymentoption val){
                          print("selected $val");
                          setState(() {
                            _paymentoption = val;
                          });
                        },
                        activeColor: Colors.orange,
                        title: Text("Paytm"),
                      ),
                      RadioListTile<Paymentoption>(
                        value: Paymentoption.Amazon_Pay,
                        groupValue: _paymentoption,
                        onChanged: (Paymentoption val){
                          print("selected $val");
                          setState(() {
                            _paymentoption= val;
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
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
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
                          Center(
                            child: Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.36,),),
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width*0.1,
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
                                    width: MediaQuery.of(context).size.width*0.1,
                                    color: Colors.red.shade300,
                                    child: Center(
                                      child: Text("NO",style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
class bookingspage extends StatefulWidget {
  @override
  String Name,House_no,SAC,CTV,dropdownValue;
  int Phno,Pincode;
  bookingspage({ Key key ,this.Name,this.Phno,this.Pincode,this.House_no,this.SAC,this.CTV,this.dropdownValue }):super(key:key);
  _bookingspageState createState() => _bookingspageState(Name,Phno,Pincode,House_no,SAC,CTV,dropdownValue);
}
class _bookingspageState extends State<bookingspage> {
  String Name,House_no,SAC,CTV,dropdownValue;
  int Phno,Pincode;
  _bookingspageState(this.Name, this.Phno ,this.Pincode, this.House_no,this.SAC,this.CTV,this.dropdownValue);

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
  final List useroptions=["Account Details",
    "Bookings",
    "Help",
    "feedback",
    "logout"];
  final vals=[userprofile(),bookingspage(),userprofile(),selecttype(),bookingspage()];
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
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.all(10.0),
                        elevation: 6.0,
                        color: Colors.grey.shade300,
                        child: ListTile(
                          title: Text(useroptions[index],style: TextStyle(
                            color: Colors.red.shade300,
                          ),),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.red.shade300,),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => vals[index]));
                          },
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
class menselectpage extends StatefulWidget {
  @override
  _menselectpageState createState() => _menselectpageState();
}
class _menselectpageState extends State<menselectpage> {
  int _personcount=0;
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.height * 0.025,
                    right: MediaQuery.of(context).size.height * 0.025,),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.18,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.025,),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.025,
                                            left: MediaQuery.of(context).size.height*0.05),),
                                        Text("Shirt",style: TextStyle(
                                          color: Colors.red.shade300,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: (){
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
                                            width: 30,
                                            height: 30,
                                            margin: EdgeInsets.only(left: 20,top: 8,right: 15),
                                            decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7.0),
                                            color: Colors.grey,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "-",style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
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
                                          onTap: (){
                                            setState(() {
                                              _personcount++;
                                            });
                                          },
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            margin: EdgeInsets.only(left: 15,top: 8),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7.0),
                                              color: Colors.grey,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "+",style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
class womenselectpage extends StatefulWidget {
  @override
  _womenselectpageState createState() => _womenselectpageState();
}
class _womenselectpageState extends State<womenselectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
class kidsselectpage extends StatefulWidget {
  @override
  _kidsselectpageState createState() => _kidsselectpageState();
}
class _kidsselectpageState extends State<kidsselectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}



