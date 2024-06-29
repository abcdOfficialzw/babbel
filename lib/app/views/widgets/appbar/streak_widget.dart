import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/dimens.dart';

class StreakWidget extends StatelessWidget {
  const StreakWidget({
    super.key,
    required this.streaks,
  });
  final int streaks;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.lightGrey,
          borderRadius:
              BorderRadius.all(Radius.circular(Dimens.borderRadius.large))),
      padding: EdgeInsets.all(Dimens.padding.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.local_fire_department_outlined,
            color: CustomColors.darkGrey,
          ),
          SizedBox(
            width: Dimens.spacing.small,
          ),
          Text(
            "$streaks",
            style: const TextStyle(
                fontWeight: FontWeight.w700, color: CustomColors.darkGrey),
          )
        ],
      ),
    );
  }
}
