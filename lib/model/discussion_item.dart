import 'package:flutter/material.dart';
class DiscussionItem extends StatelessWidget {
  final String username;
  final String content;
  final String avatarUrl;
  final String timeAgo;

  const DiscussionItem({
    super.key,
    required this.username,
    required this.content,
    required this.avatarUrl,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
            radius: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Text(
                  timeAgo,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}