import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:we_wash/LaundryApp/authentication.dart';

import 'LaundryApp/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var idScreen;

  runApp(
    new MaterialApp(

  debugShowCheckedModeBanner: false,
  home: firstpage(),

));
}
class firstpage extends StatelessWidget {

User _auth=FirebaseAuth.instance.currentUser;

  @override

  Widget logorsignup(BuildContext context) {
    if (_auth == null) {

      return Scaffold(
        body: Container(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: MediaQuery
                            .of(context)
                            .size
                            .height * 0.33,)
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.28),
                      padding: EdgeInsets.only(left: MediaQuery
                          .of(context)
                          .size
                          .width * 0.27),
                      child: Row(
                        children: <Widget>[
                          Text("We", style: TextStyle(
                              fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.12,
                              fontWeight: FontWeight.w700,
                              color: Colors.red.shade300,
                              fontStyle: FontStyle.italic
                          ),),
                          Text("Wash", style: TextStyle(
                              fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,)
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => loginpage()));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.35,
                        margin: EdgeInsets.only(left: MediaQuery
                            .of(context)
                            .size
                            .width * 0.1,
                            right: MediaQuery
                                .of(context)
                                .size
                                .width * 0.1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red.shade300,
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery
                          .of(context)
                          .size
                          .height * 0.01),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => signup(),));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.35,
                        margin: EdgeInsets.only(left: MediaQuery
                            .of(context)
                            .size
                            .width * 0.1,
                            right: MediaQuery
                                .of(context)
                                .size
                                .width * 0.1),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.red.shade300,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("Sign Up", style: TextStyle(
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
    else{

      if (_auth!= null || !_auth.emailVerified) {
         _auth.sendEmailVerification();
      }
      return mainpage();
    }
  }

  Widget build(BuildContext context){
    return Scaffold(
        body: ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: logorsignup(context),
        )
    );
  }
}

