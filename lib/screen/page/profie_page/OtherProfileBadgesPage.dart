import 'package:estudio/screen/page/profie_page/profile_screen.dart';
import 'package:flutter/material.dart';

import 'OtherProfileCoursesPage.dart';

class OtherProfileBadgesPage extends StatelessWidget {
  const OtherProfileBadgesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF2F2F2),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.blueAccent),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            '',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/Groمup 7.png'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Navaeh Griffith',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344356),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              '289,490 XP',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF344356),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF5468FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'ADD FRIEND',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.add, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const TabBar(
              labelColor: Color(0xFF344356),
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Color(0xFF5468FF),
              tabs: [
                Tab(text: 'BADGES'),
                Tab(text: 'FRIENDS'),
                Tab(text: 'COURSES'),
              ],
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: TabBarView(
                children: [
                  BadgesTab(),
                  ProfileNoFriendsPage(),
                  OtherProfileCoursesPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BadgesTab extends StatelessWidget {
  const BadgesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final badges = [
      {
        'icon': 'assets/image/Artwork.png',
        'title': 'Perfectionist',
        'subtitle': 'Finish all lessons of a chapter',
      },
      {
        'icon': 'assets/image/focused badge.png',
        'title': 'Achiever',
        'subtitle': 'Complete an exercise',
      },
      {
        'icon': 'assets/image/Group 4.png',
        'title': 'Scholar',
        'subtitle': 'Study two courses',
      },
      {
        'icon': 'assets/image/artمwork.png',
        'title': 'Champion',
        'subtitle': 'Finish #1 in the Scoreboard',
      },
      {
        'icon': 'assets/image/focused badge.png',
        'title': 'Focused',
        'subtitle': 'Study every day for 30 days',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      itemCount: badges.length,
      itemBuilder: (context, index) {
        final badge = badges[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                badge['icon']!,
                width: 48,
                height: 48,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      badge['title']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF344356),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      badge['subtitle']!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
