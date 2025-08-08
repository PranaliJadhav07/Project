import 'package:flutter/material.dart';
import 'package:project/courses.dart';
import 'package:project/courses_provider.dart';
import 'package:project/desc.dart';
import 'package:provider/provider.dart';

class PolicePage extends StatelessWidget {
  PolicePage({super.key});

  final Courses cement = Courses(
    image: 'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Police Recuritment- only Gk sessions',
    desc: 'This course is tailored exclusively for aspirants preparing for police recruitment exams across India. We understand the importance of General Knowledge (GK) in cracking these competitive exams — and that is why this course offers only what matters: high-quality GK content, laser-focused on exam relevance.',
    price:200,
    duration:'Validity-6 months'
  );
  final Courses bricks = Courses(
    image: 'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Math sessions-base to Advance',
    desc: 'This course is designed for students and competitive exam aspirants who want to build a strong foundation in Mathematics — and then level up to tackle advanced problems with confidence.',
    price:200,
    duration:'Validity-6 months'
  );
  final Courses steel = Courses(
    image: 'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Marathi sessions-base to Advance',
    desc: 'This course is crafted for learners who want to understand, speak, read, and write Marathi fluently — whether you are a beginner or looking to polish your language skills for competitive exams.',
    price:200,
    duration:'Validity-6 months'
  );
  final Courses sand = Courses(
    image: 'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Intellegence sessions',
    desc: 'These Intelligence Sessions are specially designed to boost your logical thinking, analytical skills, and problem-solving abilities — all of which are essential for cracking competitive exams and entrance tests.',
    price:200,
    duration:'Validity-6 months'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFCCF3F1),
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

  Widget buildcourse(BuildContext context, Courses  course) {
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