import 'package:flutter/material.dart';

import '../page/profie_page/OtherProfileBadgesPage.dart';

class SearchPeoplePage extends StatelessWidget {
  const SearchPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),

      body: Column(
        children: [

          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children:  [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const OtherProfileBadgesPage(),
                      ),
                    );

                  },
                    child: _PersonTile(name: 'Sarah Fox', xp: '2,349 XP', imagePath: 'assets/image/Oval Copy 2.png')),
                _PersonTile(name: 'Sarah Briggs', xp: '2,174 XP', imagePath: 'assets/image/Oval Copy 3.png'),
                _PersonTile(name: 'Sarah Torres', xp: '1,009 XP', imagePath: 'assets/image/Oval Copy 4.png'),
                _PersonTile(name: 'Sarah Hudson', xp: '1,000 XP', imagePath: 'assets/image/Oval Copy 5.png'),
                _PersonTile(name: 'Sarah Simon', xp: '945 XP', imagePath: 'assets/image/Oval Coنpy 4.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PersonTile extends StatelessWidget {
  final String name;
  final String xp;
  final String imagePath;

  const _PersonTile({
    required this.name,
    required this.xp,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 24,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF344356),
                  )),
              const SizedBox(height: 4),
              Text(
                xp,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
        ],
      ),
    );
  }
}
