/*
import 'package:bookly_app/core/utils/components/icon_button_component.dart';
import 'package:bookly_app/core/utils/helpers/back_router_old_view_helper.dart';
import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/theme_color_cubit/theme_color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBarBookDetailsView extends StatelessWidget {
  const CustomAppBarBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.038,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtonComponent(
            iconData: Icons.close,
            size: size.height * 0.04,
            onPressed: () {
              backRouterOldView(
                context: context,
              );
            },
          ),
          IconButtonComponent(
            iconData: context.watch<ThemeColorCubit>().state.brightness ==
                    Brightness.dark
                ? Icons.dark_mode
                : Icons.light_mode,
//.watch same .read, you will access to thing in cubit, but .watch if state change so .watch always do rebuild to thing it's try to access it, so if you interested in rebuild so use .watch
            color: context.watch<ThemeColorCubit>().state.brightness ==
                    Brightness.dark
                ? StyleToColors.littleWhiteColor
                : StyleToColors.yellowColor,
            size: size.height * 0.04,
            onPressed: () {
              context.read<ThemeColorCubit>().toggleThemeColor();
            },
//.read same .watch, you will access to thing in cubit, but .read if state change so .read not always do rebuild to thing it's try to access it just do rebuild for once time, so if you don't interested in rebuild so use .read
          ),
        ],
      ),
    );
  }
}
*/
