import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 500,
      color: const Color.fromARGB(255, 76, 97, 108),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 24),
            CustomTextField(
              hint: 'Description',
              maxlines: 6,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'Add Note',
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
