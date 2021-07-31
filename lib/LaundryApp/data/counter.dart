
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
class cloth_counter extends StatefulWidget {
  @override
  final List  items;
  cloth_counter({Key key,this.items}):super(key:key);
  _cloth_counterState createState() => _cloth_counterState(items:this.items);
}
class _cloth_counterState extends State<cloth_counter> {
  @override
  String add_symbol="add";
  bool change_to=false;
  List items;
  _cloth_counterState({this.items});
  Widget build(BuildContext context) {
    return  ListView.separated(
      padding: EdgeInsets.only(left: 17.0,right: 17.0,top: 27.0,bottom: 20.0),
      itemCount: items.length,
      itemBuilder: (BuildContext context,int index){
        return Material(
          shadowColor: Colors.blueAccent,
          borderRadius: BorderRadius.circular(20.0),
          child:nameplusminus(name:items[index]["Name"],Price: items[index]["Price"]),
          elevation: 5,
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
        height: 8,
      );
    },
    );
  }
}
var products={};
class nameplusminus extends StatefulWidget {
  @override
  final String name;final int Price;
  nameplusminus({Key key,this.name,this.Price}):super(key: key);
  _nameplusminusState createState() => _nameplusminusState(name:this.name,Price: this.Price);
}
class _nameplusminusState extends State<nameplusminus> {
  @override
  String name; int Price=0;
  int _personcounter=0;
  _nameplusminusState({this.name,this.Price});
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$name",style: TextStyle(
        color: Colors.red.shade300,
        fontSize:16,
        fontWeight: FontWeight.w500,
      ),),
      subtitle: Text("$Price".toString()),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          InkWell(
            onTap: (){
              setState(() {
                if(_personcounter>0){
                  _personcounter--;
                  if(_personcounter==0){
                    products.remove(name);
                  }
                  else{
                    products[name]=[_personcounter,Price,_personcounter*Price];
                  }
                  flutter_toast("Removed succesfully");
                }
              });
            },
            child: Container(
              width: 25,
              height: 25,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.010),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                border: Border.all(color: Colors.red.shade300),
                color: Colors.white,
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
          Padding(padding: EdgeInsets.only(right: 5)),
          Text("$_personcounter",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),),
          Padding(padding: EdgeInsets.only(right: 5)),
          InkWell(
            onTap: (){
              setState(() {
                _personcounter++;
                flutter_toast("Added to cart");
                if(!products.containsKey(name)) {
                  products[name]=[_personcounter,Price,_personcounter*Price];
                }
                else{
                  products[name]=[_personcounter,Price,_personcounter*Price];
                }
              });
            },
            child: Container(
              width: 25,
              height: 25,
              //margin: EdgeInsets.only(top:0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                border: Border.all(color: Colors.red.shade300),
                color: Colors.white,
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
          Padding(padding: EdgeInsets.only(right: 15)),
        ],
      ),
    );
  }
  flutter_toast(String a){
    return Fluttertoast.showToast(
        msg: "$a",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white12,
        textColor: Colors.white
    );
  }
}
