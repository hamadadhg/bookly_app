import 'package:bookly_app/features/mvvm/animations/presentation/views/widget/custom_text_for_book.dart';
import 'package:flutter/material.dart';

class CustomTextsSection extends StatelessWidget {
  const CustomTextsSection({
    super.key,
    required this.textFor,
    required this.textsFreeAndAnd,
    required this.textBuy,
  });
  final Animation<Offset> textFor;
  final Animation<Offset> textsFreeAndAnd;
  final Animation<Offset> textBuy;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextForBook(
          text: 'For  ',
          position: textFor,
        ),
        CustomTextForBook(
          text: 'Free  ',
          position: textsFreeAndAnd,
        ),
        CustomTextForBook(
          text: 'And  ',
          position: textsFreeAndAnd,
        ),
        CustomTextForBook(
          text: 'Buy',
          position: textBuy,
        ),
      ],
    );
  }
}
