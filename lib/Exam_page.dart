import 'package:flutter/material.dart';
import 'package:project/courses.dart';
import 'package:project/courses_provider.dart';
import 'package:project/desc.dart';
import 'package:provider/provider.dart';

class ExamsPage extends StatelessWidget {
  ExamsPage({super.key});

  final Courses cement = Courses(
    image:
        'https://images.app.goo.gl/Wdm3fvmmjJVbXAUaA',
    name: 'Animal Husbandry',
    desc:
        'Subjects: Marathi, English, Mathematics, Intelligence, and Technical topics related to Animal Husbandry'
        '\nCourse Level: Basic to Advanced'
        '\nMode: Live + Recorded batch'
        '\nTotal Fee: ₹2,000'
        '\nOffer Price: ₹1,000'
        '\nValidity: 1 year',
    price: 1000,
    duration: 'Validity-12 months',
  );
  final Courses bricks = Courses(
    image:
        'https://images.app.goo.gl/Wdm3fvmmjJVbXAUaA',
    name: 'Current Affairs ',
    desc:
        'Current Affairs in eBook Format'
        '\nMonthly current affairs covered through video lectures'
        '\nIncludes practice questions for revision'
        '\nUseful for: Direct Service Exams, Police Recruitment'
        '\nValidity: 1 year',
    price: 50,
    duration: 'Validity-12 months',
  );
  final Courses steel = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'MAHAGENCO Technician-3 Recruitment',
    desc:
        'MAHAGENCO Technician-3 Recruitment – 800 Vacancies'
        '\nComplete syllabus coverage'
        '\nBased on the IBPS exam pattern'
        '\nEach lecture can be watched up to 4 times'
        '\nBatch Fee: ₹1,000'
        '\nOffer Price: ₹250 (for the first 100 students only)',
    price: 200,
    duration: 'Validity-6 months',
  );
  final Courses sand = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Anganwadi Head Sevika',
    desc:
        'Anganwadi Head Sevika – Complete Detailed Batch'
        '\nAll subjects covered'
        '\nUseful for both Direct Recruitment and Departmental Exams',
    price: 200,
    duration: 'Validity-6 months',
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
