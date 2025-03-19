import 'package:flutter/material.dart';

import '../../../../../core/utils/colors_manager.dart';
import '../../../../../data/courses_data.dart';
import '../components/courses_list_widget.dart';
import '../course_details_screen.dart';

class CourseSelectionPage extends StatelessWidget {
  final List<Course> courses;

  CourseSelectionPage({required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Select a Course")),

backgroundColor: ColorsManager.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Text("choose your course", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
           
         ],),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(

              decoration: InputDecoration(

                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: ColorsManager.backGroundColor
                  ),
                  fillColor:ColorsManager.darkGrey ,
                 filled: true,
                  prefixIcon: Icon(Icons.search,color: ColorsManager.backGroundColor,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Expanded(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CoursesListWidget(),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
