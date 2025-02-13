import 'package:bookly_app/core/utils/helpers/horizontal_shimmer_loading_helper.dart';
import 'package:bookly_app/core/widgets/custom_text_failure_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/small_horizontal_books_cubit/small_horizontal_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/small_horizontal_books_cubit/small_horizontal_books_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSmallHorizontalListView extends StatelessWidget {
  const CustomSmallHorizontalListView({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<SmallHorizontalBooksCubit, SmallHorizontalBooksState>(
      builder: (context, state) {
        if (state is SmallHorizontalBooksSuccessState) {
          return Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.height * 0.16,
              child: ListView.builder(
                itemCount: state.booksSmallHorizontalState.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.012,
                    ),
                    child: CustomImage(
                      imageUrl: state.booksSmallHorizontalState[index]
                              .volumeInfo?.imageLinks?.thumbnail ??
                          '',
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SmallHorizontalBooksFailureState) {
          return CustomTextFailureState(
            textFailureState: state.errorMessageSmallHorizontalState,
          );
        } else {
          return Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.height * 0.16,
              child: ListView.builder(
                itemCount:
                    (size.height / (size.height * 0.16 + size.width * 0.012))
                        .floor(), //put item numbers beased on size the screen
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.012,
                    ),
                    child: horizontalShimmerLoadingHelper(),
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
