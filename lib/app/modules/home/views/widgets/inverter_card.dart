import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InverterCard extends StatelessWidget {
  final String title;
  final String power;
  final String lifetimeEnergy;
  final String prevMeterEnergy;
  final String todayEnergy;
  final String livePower;

  const InverterCard({
    super.key,
    required this.title,
    required this.power,
    required this.lifetimeEnergy,
    required this.prevMeterEnergy,
    required this.todayEnergy,
    required this.livePower,
  });

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
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.circle, color: Colors.blue, size: 12),
                  SizedBox(width: 6.w),
                  Text(
                    power,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: _buildInfoItem(
                  Icons.energy_savings_leaf,
                  Colors.cyan,
                  'Lifetime Energy',
                  lifetimeEnergy,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _buildInfoItem(
                  Icons.wb_sunny,
                  Colors.orange,
                  'Today Energy',
                  todayEnergy,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _buildInfoItem(
                  Icons.speed,
                  Colors.orange,
                  'Prev. Meter Energy',
                  prevMeterEnergy,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _buildInfoItem(
                  Icons.bolt,
                  Colors.purple,
                  'Live Power',
                  livePower,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, Color color, String label, String value) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                value,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
