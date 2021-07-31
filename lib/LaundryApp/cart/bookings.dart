import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_wash/LaundryApp/home/mainpage.dart';

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

