import 'package:flutter/material.dart';
import 'dart:math';

class BmiApp extends  StatefulWidget{

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BmiAppState();
  
  }

}
class _BmiAppState extends State<BmiApp>{

  final TextEditingController height= new TextEditingController();
  final TextEditingController weight =new TextEditingController();
  var h,w;
  var bmi;
  var resulttext='';
  
  _calculatebmi(){
    setState(() {
      bmi=0;
      h =double.parse(height.text);
      w=double.parse(weight.text);
      bmi=w/pow(h,2)*10000;
     
      


    });
  



  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Text(
                " Your BMI is $bmi",
                style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal
                ),
                
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller:height ,
                decoration: InputDecoration(hintText: "Enter Height")
                
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: weight,
                decoration: InputDecoration(hintText: "Enter Weight"),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  RaisedButton(
                    child: Text("Calculate BMI"),
                    onPressed: _calculatebmi,
                  ),

             


                ],
              )

            ],
          )
        ),
      ),

    );

  }



}