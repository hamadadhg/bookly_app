import 'package:bookly_app/core/utils/helpers/outline_input_border_helper.dart';
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:bookly_app/features/mvvm/search/presentation/managers/cubits/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
      ),
      child: TextField(
        onChanged: (value) {
          final searchCubit = context.read<SearchBooksCubit>();
          searchCubit.searchBooks = value;
          if (value.isNotEmpty) {
            searchCubit.verticalSearchListViewMethod();
          }
        },
        decoration: InputDecoration(
          enabledBorder: outlineInputBorderHelper(),
          focusedBorder: outlineInputBorderHelper(),
          hintText: 'Search...',
          hintStyle: StyleToText.textStyle14.copyWith(
            fontSize: size.height * 0.021,
          ),
          suffixIcon: const Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
