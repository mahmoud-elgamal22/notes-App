import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Title',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
            
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18),
              child: Text(
                'Description',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 32,
                color: Colors.black,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 14),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Text(
              "September21, 2024",
              style: TextStyle(
                color: Colors.grey.withOpacity(0.8),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
