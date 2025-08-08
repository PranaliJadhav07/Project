import 'package:flutter/material.dart';
import 'package:project/courses.dart';
import 'package:project/courses_provider.dart';
import 'package:project/desc.dart';
import 'package:provider/provider.dart';

class GroupBPage extends StatelessWidget {
  GroupBPage({super.key});

  final Courses cement = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Recorded Batch – Group D (GMC)',
    desc:
        'Recorded Batch – Group D (GMC)'
        '\nFully recorded course specially designed for Group D recruitment under GMC',
    price: 200,
    duration: 'Validity-6 months',
  );
  final Courses bricks = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Registration & Stamps Department – Group D Peon Recruitment',
    desc:
        'Registration & Stamps Department – Group D Peon Recruitment'
        '\nLive + Recorded batch'
        '\nDuration: 6 months'
        '\nSubjects Covered: Marathi, English, Mathematics, Intelligence'
        '\nFees: ₹1,000'
        '\nOffer Price: ₹200',
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
