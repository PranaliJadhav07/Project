import 'package:flutter/material.dart';
import 'package:project/courses.dart';
import 'package:project/courses_provider.dart';
import 'package:project/desc.dart';
import 'package:provider/provider.dart';

class GroupAPage extends StatelessWidget {
  GroupAPage({super.key});

  final Courses cement = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'TCS-IBPS Special English-Dhekale Sir-NDA Selected',
    desc:
        'One-Time Perfect Solution for All TCS / IBPS Pattern-Based Exams!'
        '\nCovers major recruitment exams like:'
        '\n1️⃣ Talathi Recruitment'
        '\n2️⃣ Municipal Council Recruitment'
        '\n3️⃣ Forest Guard Recruitment'
        '\n4️⃣ DMER Recruitment'
        '\n5️⃣ Stamp Duty Registration'
        '\n6️⃣ Municipal Corporation Recruitment'
        '\n7️⃣ And all other direct recruitment exams',
    price: 500,
    duration: 'Validity-8 months',
  );
  final Courses bricks = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Pharmacy Officer Non-Technical',
    desc:
        '💊 Pharmacy-related subjects will NOT be covered in this batch.'
        '\n📘 Only the topics that are common or not part of the pharmacy syllabus will be included.',
    price: 500,
    duration: 'Validity-6 months',
  );
  final Courses steel = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Talathi Recruitment',
    desc:
        'Talathi Recruitment Online Batch'
        '\nAll subjects covered'
        '\nEach video can be watched up to six times'
        '\nFree relevant tests will be provided closer to the exam'
        '\nCourse validity: 1 year',
    price: 700,
    duration: 'Validity-12 months',
  );
  final Courses sand = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Intellegence session',
    desc:
        'Arogya Sevak (Health Assistant) – As per New Pattern'
        '\nTechnical syllabus based on Government Resolution 2023'
        '\nSubjects: Marathi, General Knowledge, Intelligence, and English – as per TCS exam pattern'
        '\n tests will be provided during the exam period'
        '\nMost affordable and high-quality Arogya Sevak batch available',

    price: 500,
    duration: 'Validity-12 months',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Courses',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            buildcourse(context, cement),
            buildcourse(context, bricks),
            buildcourse(context, steel),
            buildcourse(context, sand),
          ],
        ),
      ),
    );
  }

  Widget buildcourse(BuildContext context, Courses course) {
    return InkWell(
      onTap: () {
        context.read<CoursesProvider>().selectProduct(course);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DescriptionPage()),
        );
      },
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  course.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
