/*
import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/helpers/go_router_new_view_helper.dart';
import 'package:bookly_app/core/utils/helpers/vertical_shimmer_loading_helper.dart';
import 'package:bookly_app/core/widgets/custom_text_failure_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/vertical_books_cubit/vertical_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/vertical_books_cubit/vertical_books_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_contain_vertical_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<VerticalBooksCubit, VerticalBooksState>(
      builder: (context, state) {
        if (state is VerticalBooksSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.booksVerticalState.length,
              (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.06,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      return goRouterNewViewHelper(
                        context: context,
                        view: kBookDetailsViewRouter,
                        bookModel: state.booksVerticalState[index],
                      );
                    },
                    child: CustomContainVerticalListView(
                      bookModel: state.booksVerticalState[index],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is VerticalBooksFailureState) {
          return SliverToBoxAdapter(
            child: CustomTextFailureState(
              textFailureState: state.errorMessageVerticalState,
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount:
                  (size.height / (size.height * 0.09 + size.height * 0.02))
                      .floor(),
//build items to full all the screen(all height screen / (higher item of items you want to build so it's imageShimmer not textShimmer you can plus all heights in textShimmer and compare with height imageShimmer + vertical height between all items this is in padding(0.01 but this in top 0.01 and from bottom 0.01 so the result is 0.02)))
              (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.06,
                    vertical: size.height * 0.01,
                  ),
                  child: verticalShimmerLoadingHelper(
                    size: size,
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
*/
