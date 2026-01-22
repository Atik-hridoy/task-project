import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practical_flutter_development_task/app/core/constants/app_assets.dart';

import 'data_view_card.dart';

class DataViewsSectionWidget extends StatefulWidget {
  const DataViewsSectionWidget({super.key});

  @override
  State<DataViewsSectionWidget> createState() => _DataViewsSectionWidgetState();
}

class _DataViewsSectionWidgetState extends State<DataViewsSectionWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        constraints: BoxConstraints(maxHeight: 350.h),
        child: RawScrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          thickness: 8,
          radius: Radius.circular(20.r),
          thumbColor: const Color(0xFF00BCD4),
          trackVisibility: true,
          trackColor: const Color(0xFFE0E0E0),
          trackRadius: Radius.circular(20.r),
          child: SingleChildScrollView(
            controller: _scrollController,
            padding: EdgeInsets.only(right: 8.w, top: 16.h, bottom: 16.h),
            child: Column(
              children: [
                DataViewCard(
                  iconPath: AppAssets.dataView,
                  iconColor: Colors.blue,
                  title: 'Data View',
                  status: 'Active',
                  data1: '55505.63',
                  data2: '58805.63',
                ),
                SizedBox(height: 12.h),
                DataViewCard(
                  iconPath: AppAssets.dataType2,
                  iconColor: Colors.orange,
                  title: 'Data Type 2',
                  status: 'Active',
                  data1: '55505.63',
                  data2: '58805.63',
                ),
                SizedBox(height: 12.h),
                DataViewCard(
                  iconPath: AppAssets.dataType3,
                  iconColor: Colors.blue,
                  title: 'Data Type 3',
                  status: 'Inactive',
                  data1: '55505.63',
                  data2: '58805.63',
                  isInactive: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
