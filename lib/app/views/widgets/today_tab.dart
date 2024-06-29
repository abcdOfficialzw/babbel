import 'package:flutter/material.dart';
import 'package:tutor/utils/constants/colors.dart';

import '../../../utils/constants/dimens.dart';
import 'bottom_rail/bottom_rail.dart';

class TodayTab extends StatelessWidget {
  const TodayTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Newcomer (A1) - Course 1",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: Dimens.spacing.large,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.all(
                Radius.circular(Dimens.borderRadius.medium),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                      fit: BoxFit.contain,
                      "assets/IMG_6577_Original_5-removebg-preview.png"),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(Dimens.padding.large),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lesson 1",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Takudzwa Titus Nyanhanga",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Dimens.padding.large),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: CustomColors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimens.borderRadius.large,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Start lesson",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: Dimens.spacing.large,
        ),
        BottomRail()
      ],
    );
  }
}
