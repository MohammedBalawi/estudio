import 'package:flutter/material.dart';

import 'course_discuss_page.dart';
import 'course_quizzes_page.dart';

class StudyingCourseLessonPage extends StatelessWidget {
  const StudyingCourseLessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F6FA),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF6C63FF)),
            onPressed: () => Navigator.pop(context),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Biology Basics',
                  style: TextStyle(fontSize: 14, color: Color(0xFF5468FF))),
              SizedBox(height: 4),
              Text('Biology & The Scientific Method',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black)),
              Text('4 of 8 lessons',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF5468FF),
            tabs: [
              Tab(text: 'LESSON'),
              Tab(text: 'TESTS'),
              Tab(text: 'DISCUSS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LessonTabContent(),
            CourseTestsPage(),
            StudyingCourseDiscussPage(),
          ],
        ),
      ),
    );
  }
}

class LessonTabContent extends StatelessWidget {
  const LessonTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Center(child: Image(image: AssetImage('assets/image/photo.png'))),
          const SizedBox(height: 28),
          _buildTitle('Introduction'),
          const SizedBox(height: 8),
          _buildText(
              'A biology investigation usually starts with an observation—that is, something that catches the biologist’s attention. For instance, a cancer biologist might notice that a certain kind of cancer can\'t be treated with chemotherapy and wonder why this is the case. A marine ecologist, seeing that the coral reefs of her field sites are bleaching—turning white—might set out to understand why.'),

          const SizedBox(height: 24),
          _buildTitle('The Scientific Method'),
          const SizedBox(height: 8),
          _buildText(
              'At the core of biology and other sciences lies a problem-solving approach called the scientific method. The scientific method has five basic steps, plus one feedback step:'),

          const SizedBox(height: 16),
          _buildLessonStep('Step 1', 'Make an observation', 'assets/image/icبon.png'),
          _buildLessonStep('Step 2', 'Ask a Question', 'assets/image/icoةn.png'),
          _buildLessonStep('Step 3', 'Form a Hypothesis', 'assets/image/icon.png'),
          _buildLessonStep('Step 4', 'Make a prediction based on the hypothesis', 'assets/image/icبon.png'),
          _buildLessonStep('Step 5', 'Test the prediction', 'assets/image/icبon.png'),
          _buildLessonStep('Step 6', 'Iterate: use results to make new hypotheses', 'assets/image/icبon.png'),

          const SizedBox(height: 24),
          _buildTitle('Scientific method example : Failure to toast'),
          const SizedBox(height: 8),
          _buildText(
              'Let’s build some intuition for the scientific method by applying its steps to a practical problem from everyday life.'),

          const SizedBox(height: 16),
          _buildBubbleCard(
            'Step 1',
            'Make an observation',
            'Let\'s suppose that you get two slices of bread, put them into the toaster, and press the button. However, your bread does not toast.',
            'assets/image/icبon.png',
          ),
          _buildBubbleCard(
            'Step 2',
            'Ask a question',
            'Why didn’t my bread get toasted?',
            'assets/image/icبon.png',
          ),
          _buildBubbleCard(
            'Step 1',
            'Make an observation',
            'Let\'s suppose that you get two slices of bread, put them into the toaster, and press the button. However, your bread does not toast.',
            'assets/image/icبon.png',
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) => Text(
    text,
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );

  Widget _buildText(String text) => Text(
    text,
    style: const TextStyle(fontSize: 14, color: Colors.black54, height: 1.5),
  );

  Widget _buildLessonStep(String step, String title, String iconPath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 4, offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Image.asset(iconPath, width: 40),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(step, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 4),
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubbleCard(String step, String title, String description, String iconPath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(0),
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 8, offset: const Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(iconPath, width: 40),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(step, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(height: 4),
                    Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(description,
              style: const TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ),
    );
  }
}
