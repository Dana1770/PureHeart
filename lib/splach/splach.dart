import 'dart:async';
import 'package:driver/onBoarding/onBoarding.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}
class _SplachScreenState extends State<SplachScreen> {
  startSplachTimer(){
    Timer(const Duration(seconds: 5),()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const OnBoarding()))
    );
  }
  @override
  void initState(){
    super.initState();
    startSplachTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
         width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(

            color: Color(0XFF0A003D),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 80.0,right: 100),
                child: Image(image: AssetImage('assets/8.png'),width: 150,height: 150,),
              ),
              Text(' اهلا بك في تطبيقنا الممتاز !',style: TextStyle(color:Color(0XFFD3EB57)
                  ,fontFamily: 'Young Serif',fontSize: 25,fontWeight: FontWeight.bold),),
            ],
          ),

        ) ,
      );
  }
}
