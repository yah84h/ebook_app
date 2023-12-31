import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(imageUrl: AssetsData.b1),
        ),
        const SizedBox(height: 43),
        Text('Lost Legends', style: Styles.textStyle24.copyWith(fontSize: 35)),
        const SizedBox(height: 6),
        Opacity(
            opacity: 0.7,
            child: Text('4 All-New Adventure',
                style:
                    Styles.textStyle16.copyWith(fontStyle: FontStyle.italic))),
        const SizedBox(height: 16),
        const BookRating(raitng: 4, count: 308),
        const SizedBox(height: 37),
        const BoxAction(),
      ],
    );
  }
}
