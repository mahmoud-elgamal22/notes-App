import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 55),
            const CustomAppBar(
              title: 'Save Note',
              icon: Icons.check,
            ),
            const SizedBox(height: 50),
            CustomTextFormField(
              onSaved: (value) {},
              hint: 'Title',
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              onSaved: (value) {},
              hint: 'Description',
              maxlines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
