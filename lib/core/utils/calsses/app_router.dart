import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/dependency_integration/service_locator.dart';
import 'package:bookly_app/features/mvvm/animations/presentation/views/animations_view.dart';
import 'package:bookly_app/features/mvvm/home/data/repositories/home_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/carousel_slider_books_cubit/carousel_slider_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/small_horizontal_books_cubit/small_horizontal_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/vertical_books_cubit/vertical_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/mvvm/search/data/repositories/search_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/search/presentation/managers/cubits/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/mvvm/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kAnimationsViewRouter,
        builder: (context, state) => const AnimationsView(),
      ),
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CarouselSliderBooksCubit(
                homeRepositoryImplementation:
                    getIt.get<HomeRepositoryImplementation>(),
              ),
            ),
            BlocProvider(
              create: (context) => VerticalBooksCubit(
                homeRepositoryImplementation:
                    getIt.get<HomeRepositoryImplementation>(),
              ),
            ),
          ],
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kBookDetailsViewRouter,
        builder: (context, state) => BlocProvider(
          create: (context) => SmallHorizontalBooksCubit(
            homeRepositoryImplementation:
                getIt.get<HomeRepositoryImplementation>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchViewRouter,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBooksCubit(
            searchRepositoryImplementation:
                getIt.get<SearchRepositoryImplementation>(),
          ),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
