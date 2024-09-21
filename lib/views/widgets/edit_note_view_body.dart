import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 55),
            CustomAppBar(
              title: 'Save Note',
              icon: Icons.check,
            ),
            SizedBox(height: 50),
            CustomTextFormField(
              hint: 'Title',
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              hint: 'Description',
              maxlines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
