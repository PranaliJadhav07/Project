import 'package:flutter/material.dart';
import 'package:project/courses.dart';
import 'package:project/courses_provider.dart';
import 'package:project/desc.dart';
import 'package:provider/provider.dart';

class SscPage extends StatelessWidget {
  SscPage({super.key});

  final Courses cement = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'SSC-GD Marathi Batch ',
    desc:
        '📢 SSC-GD Marathi Batch 2025'
        '\n✅ Guided by successful officers'
        '\n✅ Covers all subjects (Maths, Reasoning, GK, Hindi) – Basic to Advanced'
        '\n✅ 3 hours daily Live Classes + Recorded Videos (5 views)'
        '\n✅ 25 Full Tests with explanations'
        '\n👨‍🏫 Expert Faculty: PSI-selected & MPSC specialists'
        '\n📅 Duration: 1 Year'
        '\n💸 Fee: ₹1000 only'
        '\n🎯 Aligned with the latest SSC pattern',
    price: 400,
    duration: 'Validity-12 months',
  );
  final Courses bricks = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Firefighter Batch',
    desc:
        'Maharashtra’s First Premium Online Batch'
        '\n✅ Complete syllabus covered in detail'
        '\n✅ Thorough solution and explanation of practice questions',
    price: 200,
    duration: 'Validity-6 months',
  );
  final Courses steel = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'First Marathi-Medium Batch for Railway Guard Post',
    desc:
        '🚆 First Marathi-Medium Batch for Railway Guard Post'
        '\n✅ Also beneficial for SSC GD exam preparation'
        '\n📼 Each video can be watched up to 6 times'
        '\n📅 Duration: 1 Year',
    price: 350,
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
