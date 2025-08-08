// import 'package:flutter/material.dart';

// class CoursesPage extends StatelessWidget {
//   const CoursesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Courses',
//           style: TextStyle(fontFamily: 'Nunito', fontSize: 30),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(bottom: 16),
//               child: buildCourseCard(
//                 context,
//                 screenWidth,
//                 imageUrl:
//                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_W4scVsmrR5fVEUWWrKPPfdBVTlrwgNYnXQ&s',
//                 title: 'Police Recruitment',
//                 duration: '4 months',
//                 professor: 'Prof. A. Patil',
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(bottom: 16),
//               child: buildCourseCard(
//                 context,
//                 screenWidth,
//                 imageUrl:
//                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTyZPgIDZZSVnfpI1n5YIoQjMdgyA0uU6T3g&s',
//                 title: 'Army GD Coaching',
//                 duration: '6 months',
//                 professor: 'Prof. R. Shinde',
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(bottom: 16),
//               child: buildCourseCard(
//                 context,
//                 screenWidth,
//                 imageUrl:
//                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwni1DbZAYpjcEALW37KnPhX1ilRzS2WYoqA&s',
//                 title: 'Railway Group D',
//                 duration: '3 months',
//                 professor: 'Prof. K. Jadhav',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildCourseCard(
//     BuildContext context,
//     double screenWidth,
//      {
//     required String imageUrl,
//     required String title,
//     required String duration,
//     required String professor,
//   }) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(12),
//         onTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('$title tapped')),
//           );
//         },
//         child: Container(
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade300),
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 5,
//                 spreadRadius: 1,
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // 📷 Image Section
//               Container(
//                 width: screenWidth * 0.35,
//                 height: 140,
//                 decoration:
//                     BoxDecoration(borderRadius: BorderRadius.circular(12)),
//                 clipBehavior: Clip.hardEdge,
//                 child: Image.network(imageUrl, fit: BoxFit.cover),
//               ),

//               SizedBox(width: 12),

//               // 📄 Details Section
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),

//                     SizedBox(height: 10),

//                     Row(
//                       children: [
//                         Icon(Icons.access_time, size: 16),
//                         SizedBox(width: 6),
//                         Text(duration),
//                       ],
//                     ),

//                     SizedBox(height: 10),

//                     Row(
//                       children: [
//                         Icon(Icons.person, size: 16),
//                         SizedBox(width: 6),
//                         Text(professor),
//                       ],
//                     ),

//                     SizedBox(height: 10),

//                     // Buttons using Wrap for better responsiveness
//                     Wrap(
//                       spacing: 10,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 8),
//                             minimumSize: Size(50, 30),
//                             textStyle: TextStyle(fontSize: 12),
//                           ),
//                           child: Text('Lecture'),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 8),
//                             minimumSize: Size(50, 30),
//                             textStyle: TextStyle(fontSize: 12),
//                           ),
//                           child: Text('Notes'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project/Exam_page.dart';
import 'package:project/GroupA_page.dart';
import 'package:project/GroupB_page.dart';
import 'package:project/MPSC_page.dart';
import 'package:project/Police_page.dart';
import 'package:project/SSC_page.dart';

class  CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Courses',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'Nunito'),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCard(context, 'Police Recuritment', Colors.grey, Icons.construction, PolicePage()),
            buildCard(context, 'MPSC Exam', Colors.deepOrange, Icons.construction, MpscPage()),
            buildCard(context, 'Exams', Color.fromARGB(255, 223, 143, 45), Icons.construction, ExamsPage()),
            buildCard(context, 'SSC,Raily,Army', Colors.brown[900]!, Icons.construction, SscPage()),
            buildCard(context, 'Group A', Color.fromARGB(255, 223, 143, 45), Icons.construction, GroupAPage()),
            buildCard(context, 'Group B', Colors.brown[900]!, Icons.construction, GroupBPage()),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, Color iconColor, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(icon, size: 40, color: iconColor),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
