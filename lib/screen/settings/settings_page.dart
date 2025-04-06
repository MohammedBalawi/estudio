import 'package:estudio/screen/login_screen/Login_screen.dart';
import 'package:flutter/material.dart';

import '../login_screen/update_email_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool scoreboard = true;
  bool newCourses = false;
  bool studyReminder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FA),
        title: const Text('Settings', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.nightlight_round, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildCard([
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const UpdateEmailPage()));
              },
              child: _buildTile(Icons.person, 'Name', 'Antonio Pérez'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const UpdateEmailPage()));
              },
              child: _buildTile(Icons.email, 'Email', 'antonio@email.com'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const UpdateEmailPage()));
              },
              child: _buildTile(Icons.lock, 'Password', 'updated 2 weeks ago'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const UpdateEmailPage()));
              },
              child: _buildTile(
                  Icons.phone_android, 'Phone Number', '+00 123 456 789'),
            ),
          ]),
          const SizedBox(height: 16),
          _buildCard([
            _buildSwitchTile(Icons.star, 'Scoreboard', scoreboard,
                (val) => setState(() => scoreboard = val)),
            _buildSwitchTile(Icons.add_circle, 'New Courses', newCourses,
                (val) => setState(() => newCourses = val)),
            _buildSwitchTile(Icons.notifications_active, 'Study Reminder',
                studyReminder, (val) => setState(() => studyReminder = val)),
          ]),
          const SizedBox(height: 16),
          _buildCard([
            _buildTile(Icons.help, 'Help Center'),
            _buildTile(Icons.privacy_tip, 'Privacy & Terms'),
            _buildTile(Icons.chat, 'Contact Us'),
          ]),
          const SizedBox(height: 24),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text('LOG OUT',
                  style: TextStyle(
                      color: Color(0xFF6C63FF), fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: children),
    );
  }

  Widget _buildTile(IconData icon, String title,
      [String? subtitle, VoidCallback? onTap]) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFFAEB8FF)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _buildSwitchTile(
      IconData icon, String title, bool value, Function(bool) onChanged) {
    return SwitchListTile(
      secondary: Icon(icon, color: Color(0xFFAEB8FF)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      value: value,
      onChanged: onChanged,
    );
  }
}
