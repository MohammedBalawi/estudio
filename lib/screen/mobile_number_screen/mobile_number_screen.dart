import 'package:flutter/material.dart';

import '../verification_screen/verification_screen.dart';

class MobileNumberPage extends StatelessWidget {
  const MobileNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child:
                        const Icon(Icons.arrow_back, color: Color(0xFF6C63FF)),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: skip logic or navigate forward
                    },
                    child: const Text(
                      'SKIP',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Let\'s Get Started',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Enter your mobile number to\nenable 2-step verification.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              Container(
                height: 70,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xFF6C63FF),
                    width: 1.5,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/image/Rectangle 3.png',
                      width: 32,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '+1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: 'Mobile Number',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const VerificationPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5468FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  minimumSize: const Size.fromHeight(56),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(''),
                      const Text(
                        'CONTINUE',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Add login logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3D56F0),
                          shape: const CircleBorder(side: BorderSide.none),
                        ),
                        child: const Icon(Icons.arrow_forward,
                            color: Colors.white, size: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
