import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Yesterday's\u00A0Data",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Today's\u00A0Data",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            margin: EdgeInsets.symmetric(vertical: 12.h),
            color: Colors.grey[300],
          ),
          _buildDataRow('AC Max Power', '1636.50 kW', '2121.88 kW', false),
          SizedBox(height: 8.h),
          _buildDataRow('Net Energy', '6439.16 kWh', '4875.77 kWh', true),
          SizedBox(height: 8.h),
          _buildDataRow('Specific Yield', '1.25 kWh/kWp', '0.94 kWh/kWp', false),
          SizedBox(height: 8.h),
          _buildDataRow('Net Energy', '6439.16 kWh', '4875.77 kWh', true),
          SizedBox(height: 8.h),
          _buildDataRow('Specific Yield', '1.25 kWh/kWp', '0.94 kWh/kWp', false),
        ],
      ),
    );
  }

  Widget _buildDataRow(String label, String yesterday, String today, bool hasBackground) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: hasBackground ? Colors.grey[100] : Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.grey[700],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              yesterday,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              today,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
