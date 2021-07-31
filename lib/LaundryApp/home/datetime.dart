
import 'package:date_format/date_format.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:we_wash/LaundryApp/data/selector.dart';
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
                      prefixIcon: Icon(Icons.calendar_today,color: Colors.black),
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