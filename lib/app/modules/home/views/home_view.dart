import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_assets.dart';
import '../controllers/home_controller.dart';
import 'widgets/stat_card.dart';
import 'widgets/weather_card.dart';
import 'widgets/data_table_widget.dart';
import 'widgets/info_card.dart';
import 'widgets/inverter_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          '1st Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 14.h),
              decoration: BoxDecoration(
                color: const Color(0xFF00BCD4),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2nd Page Navigate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  const Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: StatCard(
                    iconPath: AppAssets.power,
                    value: '10000 kW',
                    label: 'Live AC Power',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: StatCard(
                    iconPath: AppAssets.plant,
                    value: '82.58 %',
                    label: 'Plant Generation',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: StatCard(
                    iconPath: AppAssets.livePR,
                    value: '85.61 %',
                    label: 'Live PR',
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: StatCard(
                    iconPath: AppAssets.cumulativePR,
                    value: '27.58 %',
                    label: 'Cumulative PR',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: StatCard(
                    iconPath: AppAssets.returnPV,
                    value: '10000 h',
                    label: 'Return (PV in hours)',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: StatCard(
                    iconPath: AppAssets.totalEnergy,
                    value: '10000 kWh',
                    label: 'Total Energy',
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            const WeatherCard(),
            SizedBox(height: 16.h),
            const DataTableWidget(),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.solar_power_outlined,
                    iconColor: Colors.blue,
                    title: 'Total Num of PV Module',
                    value: '6372 pcs. (585 Wp each)',
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.flash_on,
                    iconColor: Colors.blue,
                    title: 'Total AC Capacity',
                    value: '3000 kW',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: InfoCard(
                    icon: Icons.battery_charging_full,
                    iconColor: Colors.blue,
                    title: 'Total DC Capacity',
                    value: '3.727 MWp',
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.calendar_today,
                    iconColor: Colors.blue,
                    title: 'Date of Commissioning',
                    value: '17/07/2024',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: InfoCard(
                    icon: Icons.devices_other,
                    iconColor: Colors.blue,
                    title: 'Number of Inverter',
                    value: '30',
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.flash_on,
                    iconColor: Colors.blue,
                    title: 'Total AC Capacity',
                    value: '3000 kW',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: InfoCard(
                    icon: Icons.battery_charging_full,
                    iconColor: Colors.blue,
                    title: 'Total DC Capacity',
                    value: '3.727 MWp',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            const InverterCard(
              title: 'LT_01',
              power: '495.505 kWp / 440 kW',
              lifetimeEnergy: '352.96 MWh',
              prevMeterEnergy: '0.00 MWh',
              todayEnergy: '273.69 kWh',
              livePower: '352.96 MWh',
            ),
            SizedBox(height: 12.h),
            const InverterCard(
              title: 'LT_01',
              power: '495.505 kWp / 440 kW',
              lifetimeEnergy: '352.96 MWh',
              prevMeterEnergy: '0.00 MWh',
              todayEnergy: '273.69 kWh',
              livePower: '352.96 MWh',
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
