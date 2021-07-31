import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
            margin: EdgeInsets.all(10.0),
            child: Center(child: Text("selected items and total",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                )
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
                Container(
                  margin: EdgeInsets.all(10.0),
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
                        activeColor: Colors.red.shade300,
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
                        activeColor: Colors.red.shade300,
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
                        activeColor: Colors.red.shade300,
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
                        activeColor: Colors.red.shade300,
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
                        activeColor: Colors.red.shade300,
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
                        activeColor: Colors.red.shade300,
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
                        activeColor: Colors.red.shade300,
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
