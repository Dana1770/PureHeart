import 'package:driver/COMPONENT/component.dart';
import 'package:driver/ChooseCar/carDetails.dart';
import 'package:flutter/material.dart';
class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}
class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A003D),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: choice(t1: 'راكب',t: 'assets/man.png',f: (){
                image='assets/key.png';
                order='طلب';
                navigateAndFinish(context, const CarDetails());
              },c: Colors.orange[200]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            choice(t1: 'سائق',t: 'assets/driver.png',c: Colors.blue[100],
                f: (){
                  image='assets/image.png';

                  order='تسجيل';

                  navigateAndFinish(context, const CarDetails());
            }),


          ],
        ),
      ),

    );
  }
}
