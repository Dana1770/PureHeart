import 'package:driver/COMPONENT/component.dart';
import 'package:driver/Verification/verification.dart';
import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  @override
  Widget build(BuildContext context) {
return  Scaffold(
    backgroundColor: Colors.black,
    body: Form(
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: ListView(
          children: [

           const Image(image: AssetImage('assets/car1 .png'),width: 160,height: 160,),
            const SizedBox(height: 3,),
            const Center(
              child: Text('انشئ حساب جديد',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0XFFD3EB57))),),
            defaultFormField(controller: nameController, type: TextInputType.text,prefx: Icons.person,hint: 'ادخل اسمك',lable: 'الاسم'),
            phoneFormField(controller: phoneController, type: TextInputType.number,lable: 'ادخل الهاتف',),
            const SizedBox(height: 40,),
            Padding(
             padding: const EdgeInsets.only(right: 120.0,left: 120),
             child: eleButton(t: 'سجل',f: (){
             navigateAndFinish(context, verification());
             }),
           ),
          ],
              ),
      ),
    ),
  );
  }
}
