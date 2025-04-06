import 'package:estudio/screen/quiz_question_page/quiz_question_page.dart';
import 'package:flutter/material.dart';

class StudyingCourseDiscussPage extends StatelessWidget {
  const StudyingCourseDiscussPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [

            const SizedBox(height: 100),
            _buildCommentTile(
              avatar: 'assets/image/Oval Copy 4.png',
              name: 'Sarah Conner',
              comment:
              'What is the difference between a Theory and a Hypothesis?',
              timeAgo: '1h ago',
            ),
            const SizedBox(height: 16),
            _buildCommentTile(
              avatar: 'assets/image/Oval Copy 3.png',
              name: 'Jack Roberson',
              comment:
              '@Sarah Conner The hypothesis is an unproven statement; that can be tested. On the other hand, the theory is a scientifically tested & proven explanation of fact or event.',
              timeAgo: '1h ago',

            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF5468FF),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFF6C63FF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child:  IconButton(icon: Icon(Icons.edit, color: Colors.white, size: 30), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const QuizQuestionPage()),

            ); },),
        ),

      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicator: BoxDecoration(
          color: Color(0xFFF5F6FA),
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        indicatorColor: Colors.transparent,
        tabs: [
          Tab(text: 'LESSON'),
          Tab(text: 'TESTS'),
          Tab(text: 'DISCUSS'),
        ],
      ),
    );
  }

  Widget _buildCommentTile({
    required String avatar,
    required String name,
    required String comment,
    required String timeAgo,
    bool withEdit = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                    radius: 20,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  text: comment,
                  style: const TextStyle(fontSize: 14, height: 1.4),
                  children: comment.contains('@')
                      ? [
                    TextSpan(
                      text: comment.substring(
                          comment.indexOf('@'),
                          comment.indexOf(' ') + 1),
                      style: const TextStyle(
                        color: Color(0xFF5468FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text: comment
                            .substring(comment.indexOf(' ') + 1)),
                  ]
                      : [],
                ),
              ),
              const SizedBox(height: 8),
              Text(timeAgo, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          if (withEdit)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF5468FF),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF5468FF).withOpacity(0.2),
                      blurRadius: 20,
                    )
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.edit, size: 18, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
