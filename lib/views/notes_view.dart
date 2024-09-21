import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String id = 'notes';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 55),
            CustomAppBar(),
            NotesItem(),
          ],
        ),
      ),
    );
  }
}
