import 'package:flutter/material.dart';

import 'SearchPeoplePage.dart';

class SearchCoursesPage extends StatefulWidget {
  const SearchCoursesPage({super.key});

  @override
  State<SearchCoursesPage> createState() => _SearchCoursesPageState();
}

class _SearchCoursesPageState extends State<SearchCoursesPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Color(0xFF5468FF)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 8),

                  Center(
                    child: const Text(
                      "Social Me",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xFF344356),
                      ),
                    ),
                  ),
                  Text('                        '),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TabBar(
                  controller: _tabController,
                  labelColor: const Color(0xFF344356),
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    // color: const Color(0xFFE8EEFA),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  tabs: const [
                    Tab(text: "COURSES"),
                    Tab(text: "PEOPLE"),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildCourseList(),
                    _buildPeopleList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCourseList() {
    return ListView(
      children: [
        _buildCourseCard(
          imagePath: 'assets/image/imaمge.png',
          title: 'Social Media Marketing',
          subtitle: '18 Chapters',
          bookmarked: false,
        ),
        const SizedBox(height: 16),
        _buildCourseCard(
          imagePath: 'assets/image/iكmage.png',
          title: 'Social Media Influencer',
          subtitle: '11 Chapters',
          bookmarked: false,
        ),
      ],
    );
  }

  Widget _buildCourseCard({
    required String imagePath,
    required String title,
    required String subtitle,
    required bool bookmarked,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: bookmarked
            ? Border.all(color: const Color(0xFF4A90E2), width: 2)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(imagePath,width: 393, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF344356),
                        )),
                    const SizedBox(height: 4),
                    Text(subtitle,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.grey)),
                  ],
                ),
                const Icon(Icons.bookmark_border, color: Color(0xFF344356)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPeopleList() {
    return SearchPeoplePage();
  }
}
