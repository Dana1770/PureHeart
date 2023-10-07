import 'package:driver/Settings/settings.dart';
import 'package:driver/earnings/earnings.dart';
import 'package:driver/rating/Rating.dart';
import 'package:driver/tabs/homeTab.dart';
import 'package:flutter/material.dart';

import '../theme/colors/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override

  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  TabController? tabController;
  int currentTabIndex=0;
  @override
  void initState(){
    super.initState();
    tabController=TabController(length: 4, vsync:this );
  }
  onTabChanged(int index){
    currentTabIndex=index;
    tabController!.index=index;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
return  Scaffold(
  body: TabBarView(
    physics: const NeverScrollableScrollPhysics(),
    controller: tabController,
    children: const [
HomeTabScreen(),
      Earning(),
      Rating(),
      Settings(),
    ],
  ),
  bottomNavigationBar: BottomNavigationBar(
    items: const [

      BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'الاعدادات',),
      BottomNavigationBarItem(icon: Icon(Icons.star_rate),label: 'مستوي الخدمة',),
      BottomNavigationBarItem(icon: Icon(Icons.monetization_on),label: 'المحصلة',),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'الرئيسية',),
    ],
    type: BottomNavigationBarType.fixed,
    backgroundColor: w,
    selectedItemColor: g,
    unselectedItemColor: b,
    onTap: onTabChanged,
  currentIndex: currentTabIndex,
  ),
) ;
  }
}
