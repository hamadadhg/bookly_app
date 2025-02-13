import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_image.dart';
import 'package:flutter/material.dart';

class CustomImageSection extends StatelessWidget {
  const CustomImageSection({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.16,
      child: CustomImage(
        imageUrl: imageUrl,
      ),
    );
  }
}
