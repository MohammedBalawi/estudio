import 'package:estudio/screen/settings/settings_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  Padding(
                    padding: EdgeInsets.only(right: 24.0),
                    child: InkWell(
                      onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) =>  SettingsPage()),
                          );
                      },
                        child: Icon(Icons.settings, color: Colors.grey)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const CircleAvatar(
                radius: 48,
                backgroundColor: Colors.grey,
                child: Image(image: AssetImage('assets/image/Group 7.png'),),
              ),
              const SizedBox(height: 12),
              const Text(
                'Antonio Pérez',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                '134,679 XP',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 24),
              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xFF6C63FF),
                indicatorWeight: 3,
                tabs: [
                  Tab(text: 'BADGES'),
                  Tab(text: 'FRIENDS'),
                  Tab(text: 'SCORES'),
                ],
              ),
              const SizedBox(height: 16),
              const Expanded(
                child: TabBarView(
                  children: [
                    BadgesTab(),
                    ProfileNoFriendsPage(),
                    ScoresTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BadgesTab extends StatelessWidget {
  const BadgesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> badges = [
      {
        'title': 'Perfectionist',
        'desc': 'Finish all lessons of a chapter',
        'icon': 'assets/image/perfectionist badge.png',
      },
      {
        'title': 'Achiever',
        'desc': 'Complete an exercise',
        'icon': 'assets/image/achiever badge.png',
      },
      {
        'title': 'Scholar',
        'desc': 'Study two courses',
        'icon': 'assets/image/scholar badge.png',
      },
      {
        'title': 'Champion',
        'desc': 'Finish #1 in the Scoreboard',
        'icon': 'assets/image/achiever badge.png',
      },
      {
        'title': 'Focused',
        'desc': 'Study every day for 30 days',
        'icon': 'assets/image/achiever badge.png',
      },
    ];

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: badges.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final badge = badges[index];
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Image.asset(badge['icon']!, width: 50, height: 40),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    badge['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    badge['desc']!,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class FriendsTab extends StatelessWidget {
  const FriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> friends = [
      { 'name': 'Nell Hudson', 'xp': '2,349 XP', 'image': 'assets/image/Oval Copy 2.png' },
      { 'name': 'Cory Briggs', 'xp': '2,174 XP', 'image': 'assets/image/Oval Copy 3.png' },
      { 'name': 'Ralph Torres', 'xp': '1,009 XP', 'image': 'assets/image/Oval Copy 4.png' },
      { 'name': 'Dora Hudson', 'xp': '1,000 XP', 'image': 'assets/image/Oval Copy 5.png' },
      { 'name': 'Harriet Simon', 'xp': '945 XP', 'image': 'assets/image/Oval Copy 2.png' },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: friends.length,
      itemBuilder: (context, index) {
        final friend = friends[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          leading: CircleAvatar(
            backgroundImage: AssetImage(friend['image']!),
          ),
          title: Text(
            friend['name']!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(friend['xp']!),
        );
      },
    );
  }
}

class ScoresTab extends StatelessWidget {
  const ScoresTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> scores = [
      { 'rank': '1', 'name': 'Amy Lucas', 'xp': '2,349 XP', 'image': 'assets/image/Oval Copy 5.png' },
      { 'rank': '2', 'name': 'Landon Clayton', 'xp': '2,174 XP', 'image': 'assets/image/Oval Coنpy 4.png' },
      { 'rank': '3', 'name': 'Elva Moore', 'xp': '1,009 XP', 'image': 'assets/image/Oval Cمopy 5.png' },
      { 'rank': '4', 'name': 'Martin Garza', 'xp': '1,000 XP', 'image': 'assets/image/Oval Cنpy 3.png' },
      { 'rank': '5', 'name': 'Bernice Lewis', 'xp': '945 XP', 'image': 'assets/image/Ovaكl Copy 2.png' },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: scores.length,
      itemBuilder: (context, index) {
        final score = scores[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          leading: CircleAvatar(
            backgroundImage: AssetImage(score['image']!),
          ),
          title: Text(
            '${score['rank']}. ${score['name']!}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(score['xp']!),
        );
      },
    );
  }
}

class ProfileNoFriendsPage extends StatelessWidget {
  const ProfileNoFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const SizedBox(height: 60),
          const Center(
            child: Text(
              'No Friends!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Text(
              'It’s lonely here. Add some',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Text(
              ' some friends to make studying more fun!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            heroTag: 'addFriend',
            backgroundColor: const Color(0xFF6C63FF),
            onPressed: () {
              // Handle add friend action
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTab('BADGES', false),
        _buildTab('FRIENDS', true),
        _buildTab('SCORES', false),
      ],
    );
  }

  Widget _buildTab(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.black : Colors.black45,
        ),
      ),
    );
  }
}
