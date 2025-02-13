import 'package:bookly_app/core/utils/constant/constant_time.dart';
import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/helpers/go_router_new_view_helper.dart';
import 'package:bookly_app/features/mvvm/animations/presentation/views/widget/custom_image_animation_section.dart';
import 'package:bookly_app/features/mvvm/animations/presentation/views/widget/custom_texts_section.dart';
import 'package:flutter/material.dart';

class CustomAnimationsViewBody extends StatefulWidget {
  const CustomAnimationsViewBody({super.key});

  @override
  State<CustomAnimationsViewBody> createState() =>
      _CustomAnimationsViewBodyState();
}

class _CustomAnimationsViewBodyState extends State<CustomAnimationsViewBody>
    with TickerProviderStateMixin {
  //animation for logo image
  late AnimationController fadeAnimationController;
  late Animation<double> fadeAnimation;
  late Animation<double> scaleAnimation;
  //animation for For text
  late AnimationController slideForAnimationController;
  late Animation<Offset> slideForAnimation;
  //animation for Free and And text
  late AnimationController slideFreeAndAndAnimationController;
  late Animation<Offset> slideFreeAndAndAnimation;
  //animation for Buy text
  late AnimationController slideBuyAnimationController;
  late Animation<Offset> slideBuyAnimation;
  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 5,
      ),
      () {
        if (mounted) {
          goRouterNewViewHelper(
            context: context,
            view: kHomeViewRouter,
          );
        }
      },
    );
    fadeAnimationMethod();
    slideAnimationForTextMethod();
    slideAnimationFreeAndAndTextsMethod();
    slideAnimationBuyTextMethod();
    super.initState();
  }

  @override
  void dispose() {
    fadeAnimationController.dispose();
    slideForAnimationController.dispose();
    slideFreeAndAndAnimationController.dispose();
    slideBuyAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageAnimationSection(
          scale: scaleAnimation,
          fade: fadeAnimation,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextsSection(
          textFor: slideForAnimation,
          textsFreeAndAnd: slideFreeAndAndAnimation,
          textBuy: slideBuyAnimation,
        ),
      ],
    );
  }

  void fadeAnimationMethod() {
    fadeAnimationController = AnimationController(
      vsync: this,
      duration: kFourSeconds,
    );
    fadeAnimation = Tween<double>(
      begin: 0.0, //Fully transparent in the start app
      end: 1.0, //Fully visible after duration finish
    ).animate(
      CurvedAnimation(
        parent: fadeAnimationController,
        curve: Curves.easeIn,
      ),
    );
    scaleAnimation = Tween<double>(
      begin: 0.5, //start smaller(far away)
      end: 1.0, //at normal size
    ).animate(
      CurvedAnimation(
        parent: fadeAnimationController,
        curve: Curves.easeOut,
      ),
    );
    fadeAnimationController.forward();
  }

  void slideAnimationForTextMethod() {
    slideForAnimationController = AnimationController(
      vsync: this,
      duration: kThreeSeconds,
    );
    slideForAnimation = Tween<Offset>(
      begin: const Offset(
        -4,
        0,
      ),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: slideForAnimationController,
        curve: Curves.easeIn,
      ),
    );
    slideForAnimationController.forward();
  }

  void slideAnimationFreeAndAndTextsMethod() {
    slideFreeAndAndAnimationController = AnimationController(
      vsync: this,
      duration: kThreeSeconds,
    );
    slideFreeAndAndAnimation = Tween<Offset>(
      begin: const Offset(
        0,
        5,
      ),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: slideFreeAndAndAnimationController,
        curve: Curves.easeIn,
      ),
    );
    slideFreeAndAndAnimationController.forward();
  }

  void slideAnimationBuyTextMethod() {
    slideBuyAnimationController = AnimationController(
      vsync: this,
      duration: kThreeSeconds,
    );
    slideBuyAnimation = Tween<Offset>(
      begin: const Offset(
        5,
        0,
      ),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: slideBuyAnimationController,
        curve: Curves.easeIn,
      ),
    );
    slideBuyAnimationController.forward();
  }
}
