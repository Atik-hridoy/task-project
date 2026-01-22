import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practical_flutter_development_task/app/core/constants/app_assets.dart';

import 'action_button_widget.dart';

class ActionButtonsSectionWidget extends StatelessWidget {
  const ActionButtonsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ActionButtonWidget(
                iconPath: AppAssets.analysisPro,
                label: 'Analysis Pro',
                iconColor: Colors.orange,
                onTap: () {},
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: ActionButtonWidget(
                iconPath: AppAssets.gGenerator,
                label: 'G. Generator',
                iconColor: Colors.orange,
                onTap: () {},
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: ActionButtonWidget(
                iconPath: AppAssets.plantSummery,
                label: 'Plant Summary',
                iconColor: Colors.orange,
                onTap: () {},
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: ActionButtonWidget(
                iconPath: AppAssets.naturalGas,
                label: 'Natural Gas',
                iconColor: Colors.red,
                onTap: () {},
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: ActionButtonWidget(
                iconPath: AppAssets.dGenerator,
                label: 'D. Generator',
                iconColor: Colors.orange,
                onTap: () {},
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: ActionButtonWidget(
                iconPath: AppAssets.water,
                label: 'Water Process',
                iconColor: Colors.blue,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
