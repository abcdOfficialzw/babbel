import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';
import 'bottom_rail_item.dart';

class BottomRail extends StatelessWidget {
  const BottomRail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: Dimens.spacing.normal,
            );
          },
          itemBuilder: (context, index) {
            return BottomRailItem(
              lessonName: "Dag, Marie!",
              partNumber: index + 1,
              lessonNumber: index + 4,
              backgroundImage:
                  "assets/image-removebg-preview (${index + 3}).png",
            );
          }),
    );
  }
}
