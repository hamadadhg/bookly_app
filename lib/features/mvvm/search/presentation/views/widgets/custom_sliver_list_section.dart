/*
import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/helpers/go_router_new_view_helper.dart';
import 'package:bookly_app/core/utils/helpers/vertical_shimmer_loading_helper.dart';
import 'package:bookly_app/core/widgets/custom_text_failure_state.dart';
import 'package:bookly_app/core/widgets/custom_text_initial_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_contain_vertical_list_view.dart';
import 'package:bookly_app/features/mvvm/search/presentation/managers/cubits/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/mvvm/search/presentation/managers/cubits/search_books_cubit/search_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSliverListSection extends StatelessWidget {
  const CustomSliverListSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksInitialState) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: size.height * 0.65,
              child: const CustomTextInitialState(
                textInitialState:
                    'Your search 🔍 is empty! Find amazing books 📚 now',
              ),
            ),
          );
        } else if (state is SearchBooksSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.booksVerticalSearchState.length,
              (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        return goRouterNewViewHelper(
                          context: context,
                          view: kBookDetailsViewRouter,
                          bookModel: state.booksVerticalSearchState[index],
                        );
                      },
                      child: CustomContainVerticalListView(
                        bookModel: state.booksVerticalSearchState[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SearchBooksFailureState) {
          return SliverToBoxAdapter(
            child: CustomTextFailureState(
              textFailureState: state.errorMessageVerticalSearchState,
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
                    horizontal: size.width * 0.04,
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
