import 'package:fcis_f1/core/utils/images_manager.dart';
import 'package:fcis_f1/presentation/home/tabs/material_posts_tab/material_posts_tab.dart';
import 'package:fcis_f1/presentation/home/tabs/material_tab/material_tab.dart';
import 'package:fcis_f1/presentation/home/tabs/opportioneties_tab/opportunities_tab.dart';
import 'package:flutter/material.dart';

import '../core/utils/colors_manager.dart';
import '../core/utils/routes_manager.dart';
import 'home/tabs/notifications_tab/notification_tab.dart';
import 'home/tabs/q_and_a_tab/q_and_answer_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double iconSize = 50;

  List<Widget> tabs=[
    QAndAnswerTab(),
    MaterialPostScreen(),
    OpportunitiesPage(),
    MaterialTab(),
    notificationTab()

  ];

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ColorsManager.backGroundColor,
       appBar: AppBar(
         backgroundColor: ColorsManager.backGroundColor,
         title: const Text("FCIS F1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

       ),
      bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: false,
        backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              selectedIndex=index;
            });
          },
          currentIndex: selectedIndex,

          items:
     [

       BottomNavigationBarItem(
         icon: Image.asset(ImagesManager.q_and_answerIcon,fit: BoxFit.fill,),
         label:"q&a",
         backgroundColor: ColorsManager.backGroundColor
       ),
         BottomNavigationBarItem(
         icon: Image.asset(ImagesManager.materialPostsIcon ,fit: BoxFit.fill,),
    label:"post material",
             backgroundColor: ColorsManager.backGroundColor

         ),
       BottomNavigationBarItem(
         icon: Image.asset(ImagesManager.opportunitiesIcon,fit: BoxFit.fill,),
         label:"opportunities",
           backgroundColor: ColorsManager.backGroundColor

       ),
       BottomNavigationBarItem(
         icon: Image.asset(ImagesManager.materialsIcon,fit: BoxFit.fill,),
         label:"materials",
           backgroundColor: ColorsManager.backGroundColor



       ),
       BottomNavigationBarItem(
         icon: Image.asset(ImagesManager.notificationsIcon,fit: BoxFit.fill,),
         label:"notifications",
           backgroundColor: ColorsManager.backGroundColor

       ),


     ]

      ) ,

      body: tabs[selectedIndex],
    );
  }
}
