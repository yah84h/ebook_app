import 'package:ebook_app/core/utils/assets.dart';
import 'package:ebook_app/core/widgets/custom_error_widget.dart';
import 'package:ebook_app/core/widgets/custom_loading_indecator.dart';
import 'package:ebook_app/features/home/prsenteation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

final List bookItem = [
  AssetsData.b1,
  AssetsData.b2,
  AssetsData.b3,
  AssetsData.b4,
  AssetsData.b5,
];

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bookItem.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomBookImage(
                  imageName: bookItem[index],
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
