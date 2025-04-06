import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../flashcard_mcq_page/flashcard_flip_page.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF5468FF), size: 28),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        toolbarHeight: 40,
      ),
      backgroundColor: const Color(0xFFF5F6FA),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/confetti.png'),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const SizedBox(height: 250),
              Container(
                child: Image(image: AssetImage('assets/image/badge.png'),),
              ),
              const Text('New Badge Earned!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                'Congratulations! You just\n achieved a new Badge.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54,fontSize: 20),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image(image: AssetImage('assets/image/Group 6.png'),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image(image: AssetImage('assets/image/Group 4.png'),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image(image: AssetImage('assets/image/Group 2.png'),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image(image: AssetImage('assets/image/Group.png'),),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}