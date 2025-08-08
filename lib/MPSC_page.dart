import 'package:flutter/material.dart';
import 'package:project/courses.dart';
import 'package:project/courses_provider.dart';
import 'package:project/desc.dart';
import 'package:provider/provider.dart';

class MpscPage extends StatelessWidget {
  MpscPage({super.key});

  final Courses cement = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Special English lectures-Dhekale Sir-NDA Selected',
    desc:
        'Master English with 8 months of unlimited access!'
        '\nGrammar: Basic to advanced concepts, tricks, error spotting, PYQ analysis & option elimination method'
        '\nVocabulary: Word meanings, story-based tricks, most expected word list & full study plan1000+ MCQs, topic-wise practice & test series'
        '\nCrisp, smart, and trick-based learning for complete English command!',
    price: 500,
    duration: 'Validity-6 months',
  );
  final Courses bricks = Courses(
    image:
      'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Preliminary Exam Practice',
    desc:
        'Special MPSC Group B / Group C Batch'
        '\nUseful for PSI, STI, ASO, SR, Tax Assistant, Clerk, and more'
        '\n Common syllabus for all posts – One preparation, many possibilities!'
        '\nBatch Highlights:'
        '\n👨 Mentors who have cleared MPSC/UPSC final selections'
        '\n🎤 Teachers with interview success – real experience, real guidance'
        '\n📘 Teaching from Basic to Advanced'
        '\n🎥 Daily Live Lectures + access to recorded sessions'
        '\n📝 PYQ analysis, helpful notes & test series'
        '\n🎯 Practical strategy to score 65+ marks'
        '\n🛡 Covers all 3 stages – Prelims + Mains + Interview'
        '\n📅 Batch Starts – July 1'
        '\n➡ Daily: Live Class + Test + PDF Notes',
    price: 1000,
    duration: 'Validity-8 months',
  );
  final Courses steel = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Semainar-By MPSC Officers',
    desc:
        'Learn from successful mentors who will guide you in the right direction'
        '\nDetailed teaching of every topic'
        '\nIn-depth analysis of previous exam questions'
        '\nSmart strategies to score more in less time'
        '\nPractice tests and solutions for effective revision',
    price: 0,
    duration: 'Validity-12 months',
  );
  final Courses sand = Courses(
    image:
        'https://play-lh.googleusercontent.com/26C6gxyLUvnOoshAxyEWzLIyeiSE-Iju0RUfRZJ1yqvAI5jkhxBP4yLGeKQ60iJOAAs',
    name: 'Group B and C-(Covers Prelims, Mains & Interview)',
    desc:
        '🎓 One Complete Batch – Covers Prelims, Mains & Interview!'
        '\n📌 Perfect for all Group B & C posts, including:'
        '\n✅ PSI, '
        '\n✅ STI,'
        '\n✅ ASO,'
        '\n✅ Tax Assistant,'
        '\n✅ Excise Inspector,'
        '\n✅ Clerk (Mantralaya) & others'
        '\n📚 Unified syllabus – Prepare once, target multiple exams!'
        '\n🎯 What This Batch Offers:'
        '\n📚 Basic to Advanced level preparation'
        '\n🎥 500+ Live Lectures'
        '\n📝 Updated Notes'
        '\n🧪 Practice Test Series'
        '\n💡 Concept-Clearing Sessions'
        '\n🔴 Doubt-Solving Support'
        '\n📈 Planning as per the New Syllabus',
    price: 2000,
    duration: 'Validity-12 months',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Courses',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
