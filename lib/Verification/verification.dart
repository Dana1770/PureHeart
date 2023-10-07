import 'package:driver/COMPONENT/component.dart';
import 'package:flutter/material.dart';

import '../CHOOSE/chooseHome.dart';
class verification extends StatelessWidget {
var verificationController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/racing-game1.png'),width: 100,height: 100,),
          defaultFormField(controller:verificationController , type: TextInputType.number,lable: 'تحقق من رقم الهاتف',hint: 'ادخل الرمز'),
       const SizedBox(height: 40,),
          eleButton(t: 'تحقق',f: (){
            navigateAndFinish(context, const Choose());
          }),
        ],
      ) ,

    );
  }
}
