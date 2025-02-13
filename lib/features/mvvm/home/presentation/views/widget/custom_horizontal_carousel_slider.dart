import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/helpers/go_router_new_view_helper.dart';
import 'package:bookly_app/core/utils/helpers/horizontal_shimmer_loading_helper.dart';
import 'package:bookly_app/core/widgets/custom_text_failure_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/carousel_slider_books_cubit/carousel_slider_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/carousel_slider_books_cubit/carousel_slider_books_state.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHorizontalCarouselSlider extends StatefulWidget {
  const CustomHorizontalCarouselSlider({super.key});

  @override
  State<CustomHorizontalCarouselSlider> createState() =>
      _CustomHorizontalCarouselSliderState();
}

class _CustomHorizontalCarouselSliderState
    extends State<CustomHorizontalCarouselSlider> {
  int selectedImageFromScrollSuccessState = 0;
  int selectedImageFromScrollLoadingState = 0;
  //the variable name explain themselve, this initial value expressing on first image
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<CarouselSliderBooksCubit, CarouselSliderBooksState>(
      builder: (context, state) {
        if (state is CarouselSliderBooksSuccessState) {
          return CarouselSlider.builder(
            //CarouselSlider widget make the scroll on items start from center,and the scroll's infinity
            itemCount: state.booksCarouselSliderState.length,
            options: CarouselOptions(
              height: height *
                  0.35, //all items how many do you want to give them height in the screen
              enlargeCenterPage:
                  false, //makes the center item(you determined on it from scroll) appear larger if the value is true
              viewportFraction:
                  0.37, //controls how much space(size) to each item, and spacing between them
              onPageChanged: (index, reason) {
                //this method is work when you do scroll
                setState(
                  () {
                    selectedImageFromScrollSuccessState = index;
                  },
                );
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return AnimatedScale(
                scale:
                    index == selectedImageFromScrollSuccessState ? 1.0 : 0.75,
                //the action you want(make the determine image from scroll look like closer) it's name scale
                //this size 1.0 to determine image from scroll, this size 0.75 to undetermine image from scroll yet
                duration: const Duration(
                  milliseconds: 300,
                ),
                //this duration(time to do scale action when you do scroll)
                child: GestureDetector(
                  onTap: () {
                    goRouterNewViewHelper(
                      context: context,
                      view: kBookDetailsViewRouter,
                      bookModel: state.booksCarouselSliderState[index],
                    );
                  },
                  child: CustomImage(
                    imageUrl: state.booksCarouselSliderState[index].volumeInfo
                            ?.imageLinks?.thumbnail ??
                        '',
                  ),
                ),
              );
            },
          );
        } else if (state is CarouselSliderBooksFailureState) {
          return CustomTextFailureState(
            textFailureState: state.errorMessageCarouselSliderState,
          );
        } else {
          return CarouselSlider.builder(
            itemCount: 5,
            options: CarouselOptions(
              height: height * 0.35,
              viewportFraction: 0.37,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    selectedImageFromScrollLoadingState = index;
                  },
                );
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return AnimatedScale(
                scale:
                    index == selectedImageFromScrollLoadingState ? 1.0 : 0.75,
                duration: const Duration(
                  milliseconds: 300,
                ),
                child: horizontalShimmerLoadingHelper(),
              );
            },
          );
        }
      },
    );
  }
}
