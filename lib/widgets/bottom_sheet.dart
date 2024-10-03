import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 24),
          CustomTextFormField(
            onSaved: (value) {
              description = value;
            },
            hint: 'Description',
            maxlines: 6,
          ),
          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var notemodel = NoteModel(
                      title: title!,
                      description: description!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'Add Note',
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}





// class AddNoteForm extends StatefulWidget {
//   const AddNoteForm({
//     super.key,
//   });

//   @override
//   State<AddNoteForm> createState() => _AddNoteFormState();
// }

// class _AddNoteFormState extends State<AddNoteForm> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   String? title, description;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       autovalidateMode: autovalidateMode,
//       key: formKey,
//       child: Column(
//         children: [
//           CustomTextFormField(
//             onSaved: (value) {
//               title = value;
//             },
//             hint: 'Title',
//           ),
//           const SizedBox(height: 24),
//           CustomTextFormField(
//             onSaved: (value) {
//               description = value;
//             },
//             hint: 'Description',
//             maxlines: 6,
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           CustomButton(
//             onTap: () {
//               if (formKey.currentState!.validate()) {
//                 formKey.currentState!.save();
//                 var notemodel = NoteModel(
//                   title: title!,
//                   description: description!,
//                   date: DateTime.now().toString(),
//                   color: Colors.blue.value,
//                 );
//                 BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
//               } else {
//                 autovalidateMode = AutovalidateMode.always;
//                 setState(() {});
//               }
//             },
//             text: 'Add Note',
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//         ],
//       ),
//     );
//   }
// }
