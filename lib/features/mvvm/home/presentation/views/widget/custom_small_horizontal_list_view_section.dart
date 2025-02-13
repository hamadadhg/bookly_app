/*
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_small_horizontal_list_view.dart';
import 'package:flutter/material.dart';

class CustomSmallHorizontalListViewSection extends StatelessWidget {
  const CustomSmallHorizontalListViewSection({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.057,
          ),
          child: Text(
            'You can also like',
            style: StyleToText.textStyle18.copyWith(
              fontSize: size.height * 0.022,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        const CustomSmallHorizontalListView(),
      ],
    );
  }
}
*/
