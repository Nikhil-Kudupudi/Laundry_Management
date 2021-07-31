import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:we_wash/LaundryApp/cart/bookings.dart';
import 'package:we_wash/LaundryApp/data/selector.dart';
import 'package:we_wash/LaundryApp/details/payments.dart';

import '../auth/authentication.dart';
class userprofile extends StatefulWidget {
  @override
  _userprofileState createState() => _userprofileState();
}
class _userprofileState extends State<userprofile> {
  final List useroptions=["Account Details","Bookings","Help","Feedback","Logout"];
  final vals=[userprofile(),bookingspage(),userprofile(),selecttype(),bookingspage()];
  @override
  File _image;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          color: Colors.red.shade300,
        ),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:40)),
            Row(

              children: [
                Container(
                  height:250,
                  child:Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*1),),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 32,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                _showPicker(context);
                              },
                              child: CircleAvatar(
                                radius: 75,
                                backgroundColor: Color(0xffFDCF09),
                                child: _image != null
                                    ? ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.file(
                                    _image,
                                    fit: BoxFit.cover,
                                  ),
                                )
                                    :ClipOval(
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCz09J6ttpcnF1sBFNH25uFT7mc_R4cSeBNA&usqp=CAU',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top:10),),
                      RaisedButton.icon( icon: Icon(Icons.exit_to_app_rounded), label: Text("signout"),color: Colors.blue.shade300,onPressed: (){
                        AuthClass().signOut();
                      },)
                    ],
                  ),

                ),
              ],
            ),
            Container(
              height: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),),
                ),
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04,
                  left: MediaQuery.of(context).size.height * 0.015,
                  right: MediaQuery.of(context).size.height * 0.015,),
                child: ListView.builder(
                    itemCount: useroptions.length,
                    itemBuilder: (BuildContext context, int index){
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // side: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.all(8.0),
                        elevation: 6.0,
                        color: Colors.white,
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

  _imgFromCamera() async {
    PickedFile image = await ImagePicker().getImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      _image = File(image.path) ;
    });
  }
  _imgFromGallery() async {
    PickedFile image = await  ImagePicker().getImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = File(image.path);
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
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
  TextEditingController phnocontroller=TextEditingController();
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
                            controller: phnocontroller,
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
                                  //otp.sendOtp(phnocontroller.text, '1235648 ');
                                  //registerUser(phnocontroller.text, context);
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
//FlutterOtp otp = FlutterOtp();

}