import 'package:flutter/material.dart';

import '../../../../../data/courses_data.dart';
import '../course_details_screen.dart';
import 'material_item_widget.dart';

class CoursesListWidget extends StatelessWidget {
  const CoursesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(  // Centers the GridView
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              childAspectRatio: 0.75,
            ),
            itemCount: courses.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseDetailsPage(course: courses[index]),
                  ),
                );
              },
              child: MaterialItemWidget(courseName: courses[index].name),
            ),
          ),
        ),
      ),
    );
  }
}
