import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxlines = 1,
    required this.onSaved,
  });
  final String hint;
  final int maxlines;
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field cannot be empty';
          }
          return null;
        },
        maxLines: maxlines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: (hint),
          hintStyle: const TextStyle(color: Colors.cyanAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.cyanAccent,
            ),
          ),
        ),
      ),
    );
  }
}
