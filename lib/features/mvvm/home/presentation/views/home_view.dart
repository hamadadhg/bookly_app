/*
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/carousel_slider_books_cubit/carousel_slider_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/vertical_books_cubit/vertical_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<CarouselSliderBooksCubit>().carouselSliderMethod();
    context.read<VerticalBooksCubit>().verticalListViewMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomHomeViewBody(),
      ),
    );
  }
}
*/
