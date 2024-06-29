import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';

class BottomRailItem extends StatelessWidget {
  const BottomRailItem({
    super.key,
    required this.lessonName,
    required this.lessonNumber,
    required this.partNumber,
    required this.backgroundImage,
  });

  final String lessonName;
  final int lessonNumber;
  final int partNumber;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          padding: EdgeInsets.all(Dimens.padding.medium),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.borderRadius.medium),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lessonName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text("Part $partNumber",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Lesson $lessonNumber",
                    style: Theme.of(context).textTheme.bodyLarge),
              )
            ],
          ),
        ),
        Container(
          width: 150,
          //padding: EdgeInsets.all(Dimens.padding.medium),
          decoration: BoxDecoration(
            // color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.borderRadius.medium),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // alignment: Alignment.bottomRight,
                right: -Dimens.padding.large,
                bottom: -Dimens.padding.large,
                child: Image.asset(backgroundImage),
              )
            ],
          ),
        ),
      ],
    );
  }
}
