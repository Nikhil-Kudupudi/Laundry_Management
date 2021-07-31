
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:we_wash/LaundryApp/cart/cartpage.dart';
import 'package:we_wash/LaundryApp/data/counter.dart';

List Mens_dresses=[];
List Women_dresses=[];
List Kids_dresses=[];

class selecttype extends StatefulWidget {
  @override
  _selecttypeState createState() => _selecttypeState();
}
class _selecttypeState extends State<selecttype> {
  @override

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/Mens_clothes.json');
    final String responsewomen=await rootBundle.loadString('assets/Womens_clothes.json');
    final String responsekids=await rootBundle.loadString('assets/Kids_clothes.json');
    final data = await json.decode(response);
    final datawomen = await json.decode(responsewomen);
    final datakids = await json.decode(responsekids);
    setState(() {
      Mens_dresses = data["items"];
      Women_dresses=datawomen["items"];
      Kids_dresses=datakids["items"];
    });

  }
  void initState(){
    readJson().then((value){
      print(Mens_dresses);
    });
    super.initState();
  }
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
              child:Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.06)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.85,),),
                      IconButton(onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cartpage()),
                        );},
                        icon:Icon(Icons.shopping_cart,color: Colors.black),)
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,
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
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 30.0,
                                    offset: Offset(5.0,0.0)
                                )]
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
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 30.0,
                                    offset: Offset(5.0,0.0)
                                )]
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
                        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015)),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => others()));
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
                            child: Text("Others",style: TextStyle(
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
class menselectpage extends StatefulWidget {
  @override
  _menselectpageState createState() => _menselectpageState();
}
class _menselectpageState extends State<menselectpage> {
  @override
  List men_dresses= ["Shirts","T-Shirts","Trousers","Jeans","Shorts","Track Pant","Suit","Hoodie"];
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.85,),),
                      IconButton(onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cartpage()),
                        );},
                        icon:Icon(Icons.shopping_cart,color: Colors.black),)
                    ],
                  ),
                  Text("Add Your Clothes",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16.0),),
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: cloth_counter(items: Mens_dresses,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class womenselectpage extends StatefulWidget {
  const womenselectpage({Key key}) : super(key: key);
  @override
  _womenselectpageState createState() => _womenselectpageState();
}
class _womenselectpageState extends State<womenselectpage> {
  @override
  List women_dresses= ["Shirts","T-Shirts","Leggings","Jeans","Chudidhar","Saree","Shorts","Tops"];
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
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.85,),),
                      IconButton(onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cartpage()),
                        );},
                        icon:Icon(Icons.shopping_cart,color: Colors.black),)
                    ],
                  ),
                  Text("Add Your Clothes",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16.0),),
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: cloth_counter(items: Women_dresses,)
              ),
            ),
          ],
        ),
      ),
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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.85,),),
                      IconButton(onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cartpage()),
                        );},
                        icon:Icon(Icons.shopping_cart,color: Colors.black),)
                    ],
                  ),
                  Text("Add Your Clothes",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16.0),),
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: cloth_counter(items: Kids_dresses,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class others extends StatefulWidget {
  const others({Key key}) : super(key: key);
  @override
  _othersState createState() => _othersState();
}
class _othersState extends State<others> {
  @override
  List others=["Towel","Bed Sheet","Pillow Cover","Curtain","Blanket","Sofa Cover"];
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
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.85,),),
                      IconButton(onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cartpage()),
                        );},
                        icon:Icon(Icons.shopping_cart,color: Colors.black),)
                    ],
                  ),
                  Text("Add Your Clothes",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16.0),),
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
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: cloth_counter(items: others,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}