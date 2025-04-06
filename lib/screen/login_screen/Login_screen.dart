import 'package:estudio/screen/page/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import '../page/home_screen/main_navigation.dart';
import 'email_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back, color: Color(0xFF6C63FF)),
              ),
              const SizedBox(height: 32),
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Enter your login details to\naccess your account',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    const  TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'antonio@email.com',
                        hintStyle: TextStyle(color: Color(0xFF6C63FF)),
                      ),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            obscureText: _obscureText,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Your Password',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // TODO: Handle forgot password
                          },
                          child: const Text(
                            'FORGOT',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const EmailPage()),
                        );
                      },
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Color(0xFF6C63FF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 38),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MainNavigation()),
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
                  padding: EdgeInsets.only(
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
                          backgroundColor:const Color(0xFF3D56F0),
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
