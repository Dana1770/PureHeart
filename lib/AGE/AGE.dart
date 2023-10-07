
import 'package:driver/register/register.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../COMPONENT/component.dart';
import '../theme/colors/colors.dart';
class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}
class _AgeScreenState extends State<AgeScreen> {
  int _currentValue = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            const Center(child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(image: AssetImage('assets/5.jpeg'),width: 150,),
            )),
            Center(child: Text('كم تبلغ من العمر ؟',style: TextStyle(color:g
                ,fontSize: 30,fontWeight: FontWeight.bold,wordSpacing: 10),)),
            const SizedBox(height: 10,),
            divider(),
            const SizedBox(height: 20,),
            Center(
              child: NumberPicker(

                itemHeight: 100,
                selectedTextStyle:  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: g,
                ),
                textStyle:  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: gr,
                ),
                value: _currentValue,
                minValue: 1,
                maxValue: 1000,
                onChanged: (value) => setState(() => _currentValue = value),
              ),
            ),
            divider(),
             SizedBox(height: 25,),
            Padding(
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FAB(context: context,w:const Register(),c: Icon(Icons.arrow_back_ios_rounded,color:b) ),

                ],
              ),
            ),



          ],
    ), ),);}
}
