import 'package:driver/CHOOSE/chooseHome.dart';
import 'package:flutter/material.dart';
import '../COMPONENT/component.dart';
import '../Verification/verification.dart';
String?order;
String?image;
class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}
class _CarDetailsState extends State<CarDetails> {
  var carModelController=TextEditingController();
  var carColorController=TextEditingController();
  var carNameController=TextEditingController();
  List <DropdownMenuItem<String>> carTypes=[
    DropdownMenuItem(value: 'تاكسي',
      child: TextButton.icon(onPressed: (){}, icon:const Image(image: AssetImage('assets/car1 .png'),width: 40,height: 40,),
    label: const Text('Taxi',style: TextStyle(color: Colors.grey)),
       ),),
    DropdownMenuItem(value: 'توك توك',child: TextButton.icon(
      label: const Text('Tok-tok',style: TextStyle(color: Colors.grey),),
  icon: const Image(image: AssetImage('assets/tok_tok-0_-removebg-preview.png'),),
  onPressed: (){},

      ),),



  ];
  String?selectedCarType;
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
  actions:[
IconButton(onPressed: (){
  navigateAndFinish(context, const Choose());
}, icon: const Icon(Icons.arrow_forward))
  ]
  ),
  body: Form(
    child: Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: ListView(
        children: [

           Image(image: AssetImage(image!),width: 160,height: 160,),
          const SizedBox(height: 3,),
          defaultFormField(controller: carModelController, type: TextInputType.number,prefx: Icons.date_range,hint: 'موديل السيارة',),
          defaultFormField(controller: carColorController, type: TextInputType.text,prefx: Icons.color_lens_outlined,hint:'لون السيارة' ,),
          defaultFormField(controller: carNameController, type: TextInputType.text,prefx: Icons.edit,hint:'نوع السيارة' ,),
          Padding(
            padding: const EdgeInsets.only(left: 100.0,right: 100),
            child: DropdownButton(
              hint: const Text('اختار نوع العربية',style: TextStyle(color: Colors.grey ),),
              dropdownColor: Colors.black,
                value: selectedCarType,
                items:carTypes,
                onChanged: (String? val){
                  setState(() {
                    selectedCarType=val;
                    carNameController.text=selectedCarType.toString();
                  });
                }
            ),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(right: 120.0,left: 120),
            child: eleButton(t: order,f: (){
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
