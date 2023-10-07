import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class NoteButtonSheet extends StatelessWidget {
  const NoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
            listener: (context, state) {
          // TODO: implement listener
          if (state is AddNoteFailure) {
            print('failed,${state.errMassage}');
          }
          if (state is AddNoteLoading) {
            Navigator.pop(context);
          }
            },
            builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child:AbsorbPointer(
              absorbing: state is AddNoteLoading ? true: false,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: const SingleChildScrollView(child: AddNoteForm()))),
          );
            },
          )),
    );
  }
}
