

import 'package:flutter/material.dart';

import '../../../../data/courses_data.dart';
import 'course_selection_screen/course_selection_screen.dart';

class MaterialTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CourseSelectionPage(courses: courses);
  }
}



// import 'package:flutter/material.dart';
//
// import '../../../../core/utils/images_manager.dart';
// import '../../../../data/courses_data.dart';
// import 'components/material_item_widget.dart';
//
// class MaterialTab extends StatelessWidget {
//    MaterialTab({super.key});
//
// //final List<Course> courses;
//   List<String> courseName=[
//     "Algorithm",
//     "Operating System",
//     "Data Structure",
//     "machine learning"
//
//
//   ];
//    List<Course> courses =[
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//      Course(name: "Operating System", lectures: {
//        'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
//        'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//        'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
//        'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
//        'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
//        'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
//        'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
//        'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
//        'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
//        'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',
//
//
//
//      },
//          labs: {
//
//            'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
//            'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
//            'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
//            'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
//            'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
//            'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
//            'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
//          }),
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//    ];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         backgroundColor: Colors.white,
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30))),
//               ),
//             ),
//             // Container(
//             //   height: 140,
//             //   width: 130,
//             //   decoration: BoxDecoration(
//             //       color: Colors.blue, borderRadius: BorderRadius.circular(30)),
//             //   child: Center(child: Text("Algorithm")),
//             // ),
//
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GridView.builder(itemCount: courses.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20, mainAxisSpacing: 15,childAspectRatio: 0.75), itemBuilder: (context, index) => InkWell(
//                   onTap:() {
//
//                   } ,
//                   child: MaterialItemWidget(courseName: courses[index].name),
//
//                 ),),
//               ),
//             )
//
//
//
//
//           ],
//         ));
//   }
// }
