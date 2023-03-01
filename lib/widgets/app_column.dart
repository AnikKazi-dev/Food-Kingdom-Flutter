import 'package:flutter/material.dart';
import 'package:food_kingdom/utils/dimensions.dart';
import 'package:food_kingdom/widgets/big_text.dart';
import 'package:food_kingdom/widgets/small_text.dart';

import '../colors/colors.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  size: 15,
                  color: AppColors.mainColor,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(
              text: "4.5",
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: "1287"),
            SizedBox(width: Dimensions.width10),
            SmallText(text: "Comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          children: [
            IconAndTextWidget(
              icon: Icons.circle,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            SizedBox(width: Dimensions.width20),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.iconColor1,
            ),
            SizedBox(width: Dimensions.width20),
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "32 Min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
