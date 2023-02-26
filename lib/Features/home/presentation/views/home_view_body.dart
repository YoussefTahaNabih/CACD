import 'package:flutter/material.dart';

import 'package:cacd/core/utils/assets.dart';
import 'package:cacd/core/utils/strings.dart';

import '../../../../core/utils/styles.dart';
import 'widgets/button_widget.dart';
import 'widgets/text_widget.dart';

class HomViewBody extends StatelessWidget {
  const HomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 170,
          ),
          Image.asset(AssetsData.uploadImage),
          const SizedBox(
            height: 58,
          ),
          TextWidget(
            style: Styles.title,
            title: StringsData.title,
          ),
          TextWidget(
            style: Styles.description,
            title: StringsData.description,
          ),
          const SizedBox(
            height: 87,
          ),
          const ButtonWidget()
        ],
      ),
    );
  }
}
