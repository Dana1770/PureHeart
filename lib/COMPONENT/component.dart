import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../onBoarding/onBoarding.dart';
import '../theme/colors/colors.dart';
String token='';
Widget build_Boarding_Item (BordingMODEL model)=> Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Center(
      child: Column(

        children: [
             CircleAvatar(
              radius: 130,
               backgroundColor:b,
                backgroundImage:   AssetImage(model.image),),]),
    ),
    SizedBox(height: 20,),
    Text(model.title,
      textDirection: TextDirection.ltr,
      style:  TextStyle(

        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: g,
      ),),
    const SizedBox(height: 5,),

    Text(model.body,
      textDirection: TextDirection.rtl,
      style:TextStyle(
        color: g,
        fontSize: 14,
      ),),
    const SizedBox(height: 5,),
    Text(model.t1,
      style:  TextStyle(
        color: g,
        fontSize: 14,
      ),),

//*
  ],
) ;
Future navigateAndFinish (context,widget)=>
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(
            builder: (context)=>widget),
    (Route<dynamic>route)=>false);
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmite,
  Function(String)? onChange,
  VoidCallback? onTap,
  bool isPassword = false,
  validate,
  String? lable,
  IconData? prefx,
  IconData? suffix,
  VoidCallback? suffixPassword,
  Color? fillcolor,
  bool? Isfilled,
  double borderradius = 4.0,
  String hint = " ",
  Color? iconColor,
  Color? textColor,
  String?t2,
}) =>
    Padding(
      padding:  const EdgeInsets.only(right: 20.0,left: 20,top: 20),
      child: TextFormField(
    style:  TextStyle(color: w),
        cursorColor: w,
          controller: controller,
          keyboardType: type,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15.0),

            hintText: hint,
            hintStyle:  TextStyle(color: w),
            iconColor: g,
            prefix: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(prefx,color: g,),
            ),
            labelText: lable,
            floatingLabelStyle: TextStyle(color: w),
            labelStyle: TextStyle(color:w),
            fillColor: w,
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide:  BorderSide(
                color:w,

              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide:  BorderSide(
                color: w,
                width: 2.0,
              ),
            ),
          )
      ),
    );
Widget phoneFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmite,
  Function(String)? onChange,
  VoidCallback? onTap,
  bool isPassword = false,
  validate,
  String? lable,
  IconData? prefx,
  IconData? suffix,
  VoidCallback? suffixPassword,
  Color? fillcolor,
  bool? Isfilled,
  double borderradius = 4.0,
  String hint = " ",
  Color? iconColor,
  Color? textColor,
  String?t2,
}) =>
    Padding(
      padding:  const EdgeInsets.only(right: 20.0,left: 20,top: 20),
      child: IntlPhoneField(
        pickerDialogStyle: PickerDialogStyle(backgroundColor: w,),
        style: TextStyle(color:w
        ),
          initialCountryCode: 'IQ',
          languageCode: 'ar',
          cursorColor:  Colors.white,
          controller: controller,
          keyboardType: type,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15.0),
            hintText: hint,
            hintStyle:TextStyle(color: w),
            iconColor: g,
            prefix: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(prefx,color: g,),
            ),
            labelText: lable,
            floatingLabelStyle:  TextStyle(color: g),
            labelStyle: TextStyle(color:w),
            fillColor:  g,
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide:  BorderSide(
                color: w,

              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide:  BorderSide(
                color: w,
                width: 2.0,
              ),
            ),
          )
      ),
    );
Widget defultTextButton({String?t, VoidCallback?f,})=>
    TextButton(onPressed: f, child: Text(t!,style:TextStyle(fontWeight: FontWeight.bold,color: g)));
Widget eleButton ({  String?t,VoidCallback?f})=>
    ElevatedButton(onPressed: f,style: ButtonStyle(
    overlayColor: MaterialStateProperty.all( b),
    backgroundColor: MaterialStateProperty.all(g),
    )
  ,child: Text(t!,style: TextStyle(fontFamily:'Sedgwick Ave Display',
      fontSize: 19,color: b),),);
Widget DTB ({context,Widget? w,String?s})=> Padding(
  padding: const EdgeInsets.only(top: 40.0,right: 100),
  child: TextButton(
      onPressed: (){
    navigateAndFinish(context, w);

  }, child: Text(s!,style: const TextStyle(fontWeight: FontWeight.bold,fontFamily:'Young Serif',fontSize: 18,color: Colors.white),)),
);
Widget choice ({String? t,String? t1,VoidCallback?f,Color? c})=>  Padding(
  padding: const EdgeInsets.only(right: 85.0,left: 85),
  child:GestureDetector(
    onTap: f,
    child: Container(
      margin: const EdgeInsets.all(10),
      width: 200,
      height: 180,
      decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Image(image: AssetImage(t!),width: 100,height: 70,),
          Text(t1!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purple[600]),)
        ],
      ),
    ),
  ),

);
Widget FAB({context,Widget? w,Icon? c})=> FloatingActionButton(
  backgroundColor: Colors.white,
  onPressed: (){

    navigateAndFinish(context, w);


  },
  child: c,);
Widget divider()=>Divider(indent: 120,height: 10,color: g,endIndent: 120,thickness: 2,);
