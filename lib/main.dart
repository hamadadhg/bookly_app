import 'package:bookly_app/core/utils/calsses/app_router.dart';
import 'package:bookly_app/core/utils/dependency_integration/service_locator.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/theme_color_cubit/theme_color_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocator(); //all app you can use service locator
  runApp(
    DevicePreview(
      //DevicePreview to test on your app on many devices and many different screen sizes
      enabled: true,
//enable you to test your app on different devices(so it's make DevicePreview work), if the value was false so the DevicePreview doesn't work
//but when you instal release app on your phone you should give it false
      devices: Devices.all,
//get on all devices(android, ios, windows,..) and different types
      builder: (context) => BlocProvider(
        create: (context) => ThemeColorCubit(),
        child: const BooklyApp(),
      ),
    ),
//you put app in builder:, the app you want to do test in DevicePreview
  ); //because i want the theme change in all app
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeColorCubit, ThemeData>(
      builder: (context, theme) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: theme,
          routerConfig: AppRouter.router,
//all app you can use GoRouter if you want in this place, and you can don't use home:
          locale: DevicePreview.locale(context),
//this attribute ensure the language and region settings are follow this app because you have many devices and not all devices have same language and region settings
          builder: DevicePreview.appBuilder,
//this attribute organize the screen size, pixle, and resolution(in Device Preview options in emulator this attribute make it work)
        );
      }, //you can naming state instead of theme
    );
  }
}
