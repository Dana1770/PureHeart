import 'package:driver/AGE/AGE.dart';
import 'package:flutter/material.dart';
import '../COMPONENT/component.dart';
import '../cacheHelper.dart';
class BordingMODEL{
  final String image;
  final String title;
  final String body;
  final String t1;
  BordingMODEL(this.image,this.title,this.body,this.t1);
}
class OnBoarding extends StatefulWidget{
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}
class _OnBoardingState extends State<OnBoarding> {
  double size=200.0;

var boardController=PageController();
  List <BordingMODEL>bording=[
    BordingMODEL('assets/7.png',
        'هل انت مستعد لتوصيلتك الثانية؟',
        'تطبيقنا هو الامثل سجل الأن.','استغل الفرصة ولا تضيع الوقت.'),



  ];
void submit(){

CacheHelper.SetData(key: 'onBoarding', value: true).then((value) {
  if(value){
    navigateAndFinish(context, const AgeScreen());
  }
});

}
  bool isLast=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     backgroundColor:  Colors.black,
     body:Padding(
  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2,right: 30,left: 30),
  child:   Column(

    children: [

      Expanded(

        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          onPageChanged: (int index){
            if(index==bording.length-1){
              print('last');
             setState(() {
               isLast=true;
             });
            }
            else{
              print('not last');
              setState(() {
                isLast=false;
              });
            }
          },
          controller: boardController,
          itemBuilder: (context,index)=>build_Boarding_Item(bording[index]),

        itemCount: bording.length,



        ),

      ),
     // const SizedBox(height: 30,),

      Padding(
        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1,left: 5),
        child: Row(

          children: [
         FAB(context: context,w:const AgeScreen(),c:const Icon(Icons.arrow_back_ios_rounded,color: Colors.black) ),

            const Spacer(),


          ],

        ),
      ),

    ],

  ),
) ,
   );



  }

}