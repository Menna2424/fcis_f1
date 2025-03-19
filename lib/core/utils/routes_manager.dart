import 'package:fcis_f1/presentation/home/tabs/q_and_a_tab/q_and_answer_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/courses_data.dart';
import '../../presentation/home/tabs/material_posts_tab/material_posts_tab.dart';
import '../../presentation/home/tabs/material_tab/material_tab.dart';
import '../../presentation/home/tabs/notifications_tab/notification_tab.dart';
import '../../presentation/home/tabs/opportioneties_tab/opportunities_tab.dart';
import '../../presentation/home_screen.dart';

class RoutsManager{
  
  static const String mainScrean = "/home";
  static const String materialScreen = "/material";
   static const String materialPostsScreen = "/materialPosts";
  static const String notificationsScreen = "/notificationsScreen";
  static const String opportunitiesScreen = "/opportunitiesScreen";
  static const String q_and_answer_Screen = "/q_and_answer_Screen";


  static Route<dynamic>?router (RouteSettings settings){
    switch (settings.name){

      case mainScrean :{

        return MaterialPageRoute(builder: (context) => HomeScreen(),);
      }


      case materialScreen : 
        {
          return MaterialPageRoute(builder: (context) => MaterialTab(),);
          
        }
      case materialPostsScreen :
      {

        return MaterialPageRoute(builder: (context) => MaterialPostScreen(),);

      }

      case notificationsScreen :
        {

          return MaterialPageRoute(builder: (context) => notificationTab(),);

        }

      case opportunitiesScreen :
        {

          return MaterialPageRoute(builder: (context) => OpportunitiesTab(),);

        }


      case q_and_answer_Screen :
        {

          return MaterialPageRoute(builder: (context) => QAndAnswerTab(),);

        }

      
    }
    
    
  }
  
  
  
  
}