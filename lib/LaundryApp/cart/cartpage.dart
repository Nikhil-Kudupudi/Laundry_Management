
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:we_wash/LaundryApp/data/counter.dart';
import 'package:we_wash/LaundryApp/details/userprofile.dart';
class cartpage extends StatefulWidget {
  @override
  _cartpageState createState() => _cartpageState();
}
class _cartpageState extends State<cartpage> {
  bool validatecoupoun=true;
  List<String> checkCoupoun=["Firsttime","secondVisit","developed","experienced"];
  final entercoupoun=TextEditingController();
  bool _iscoupoun=false;
  bool found=false;
  @override
  _cartpageState();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clothes in Cart"),
        backgroundColor: Colors.red.shade300,
        leading: Icon(Icons.arrow_back),
      ),
      body:Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height-300,
            child: ListView.separated(
                itemBuilder: (BuildContext context,int index){
                  String key = products.keys.elementAt(index);
                  return ListTile(
                    title: Text("$key",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0,
                    ),),
                    trailing: Text("${products[key][0]}x ${products[key][1]}=${products[key][2]}",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                    ),),
                  );
                }, separatorBuilder:(BuildContext context, int index) {
              return SizedBox(
                height: 0,
              );
            },
                itemCount: products.length
            ),


          ),
          Row(
            children: <Widget>[
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width*0.7,
                margin: EdgeInsets.all(10.0),
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
                    suffixIcon: checkCoupoun.contains(entercoupoun.text)?Icon(Icons.assignment_turned_in_rounded):Icon(Icons.dangerous),
                    errorText: entercoupoun.text.isEmpty?null:(checkCoupoun.contains(entercoupoun.text)?"coupoun valid":"not found"),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(!entercoupoun.text.isEmpty) {


                    if(checkCoupoun.contains(entercoupoun.text)){
                      setState(() {
                        _iscoupoun=true;
                      });

                    }
                    else
                      setState(() {
                        _iscoupoun=false;

                      });
                  }
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.2,
                  child: Center(
                    child: Text(_iscoupoun?"applied":"apply",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white
                    ),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(17.0)
                  ),
                ),
              )
            ],
          ),

          Row(
            children: [
              Center(
                child: Container(
                  child:  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => detailspage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top:10.0,left: 20.0,right: 20.0),
                      height: 40,
                      width: 300,
                      child: Center(child: Text("submit",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0),)),
                      color: Colors.red.shade300,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}