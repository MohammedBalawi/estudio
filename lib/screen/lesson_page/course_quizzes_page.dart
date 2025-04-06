import 'package:flutter/material.dart';



class CourseTestsPage extends StatelessWidget {
  const CourseTestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          const SizedBox(height: 70),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children:  [
                QuizCard(
                  iconPath: "assets/image/icبon.png",
                  title: "The Scientific Method",
                  subtitle: "Let’s put your memory on our first topic to test.",
                  onPressed: () {
                    // Navigate to quiz page
                  },
                ),

                SizedBox(height: 16),
                QuizCard(
                  iconPath: "assets/image/icoةn.png",
                  title: "Introduction to Biology",
                  subtitle: "Complete the above test to unlock this one.",
                  onPressed: () {
                    // Navigate to quiz page
                  },
                ),


                SizedBox(height: 16),
                QuizCard(
                  iconPath: "assets/image/icon.png",
                  title: "Controlled Experiments",
                  subtitle: "Complete the above test to unlock this one.",
                  onPressed: () {
                    // Navigate to quiz page
                  },
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}




class QuizCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const QuizCard({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFE8EEFA),
                ),
                child: Image.asset(iconPath, width: 40, height: 40),
              ),
              const SizedBox(width: 16),
              // Texts
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Quiz 1", style: TextStyle(color: Colors.grey.shade500)),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF344356),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 14, color: Color(0xFF344356)),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5468FF),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Center(child: Text("BEGIN", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                          SizedBox(width: 8),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.arrow_forward, size: 16, color: Color(0xFF5468FF)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        // Arrow Tail
        Positioned(
          bottom: -8,
          left: 40,
          child: CustomPaint(
            size: const Size(20, 10),
            painter: TrianglePainter(color: Colors.white),
          ),
        )
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

