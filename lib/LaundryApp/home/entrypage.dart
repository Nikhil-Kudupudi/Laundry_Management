
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'datetime.dart';
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
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              child: Center(
                child: Text("Flat 50% off on first two booking",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold
                ),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
            child: Text("USE CODE : TWO50",style: TextStyle(
                color: Colors.red.shade300,
                fontSize: 14.0,
                fontWeight: FontWeight.bold
            ),),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              child: Center(
                child: Text("Flat 20% off on Weekends",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold
                ),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
            child: Text("USE CODE : WEEKEND20",style: TextStyle(
                color: Colors.red.shade300,
                fontSize: 14.0,
                fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    );
  }
}