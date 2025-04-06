import 'package:flutter/material.dart';

class UpdateEmailPage extends StatelessWidget {
  const UpdateEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // زر الرجوع
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Color(0xFF6C63FF)),
              ),
              const SizedBox(height: 8),

              // العنوان
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Update Email',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF344356),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Enter your new email\naddress below.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF8891A4),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // حقل الإدخال
              Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: const TextField(
                  textAlignVertical:  TextAlignVertical.center,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'antonio@email.com',
                  ),
                ),
              ),

              const SizedBox(height: 50),

              const Center(
                child: Text(
                  'We will send an email to verify\nyour new email address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8891A4),
                    fontSize: 14,
                  ),
                ),
              ),

           SizedBox(height: 70,),

              // زر الحفظ
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5468FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('                              '),
                      const Text(
                        'SAVE',
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
                          backgroundColor:const Color(0xFF3D56F0),
                          shape: const CircleBorder(side: BorderSide.none),
                        ),
                        child: const Icon(Icons.arrow_forward,
                            color: Colors.white, size: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
