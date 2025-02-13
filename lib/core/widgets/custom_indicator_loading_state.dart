import 'package:flutter/material.dart';

class CustomIndicatorLoadingState extends StatelessWidget {
  const CustomIndicatorLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
