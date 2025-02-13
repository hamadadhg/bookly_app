import 'package:bookly_app/features/mvvm/search/presentation/views/widgets/custom_sliver_list_section.dart';
import 'package:bookly_app/features/mvvm/search/presentation/views/widgets/custom_text_field_section.dart';
import 'package:flutter/material.dart';

class CustomSearchViewBody extends StatelessWidget {
  const CustomSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              const CustomTextFieldSection(),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
        const CustomSliverListSection(),
      ],
    );
  }
}
