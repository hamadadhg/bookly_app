import 'package:bookly_app/core/utils/assets/image_asset.dart';
import 'package:flutter/material.dart';

class CustomImageAnimationSection extends StatelessWidget {
  const CustomImageAnimationSection({
    super.key,
    required this.scale,
    required this.fade,
  });
  final Animation<double> scale;
  final Animation<double> fade;
  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scale,
      child: FadeTransition(
        opacity: fade,
        child: Image.asset(
          ImageAsset.logoImage,
        ),
      ),
    );
  }
}
