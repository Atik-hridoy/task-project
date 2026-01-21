import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({super.key});

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  int _currentIndex = 0;

  final List<WeatherData> _weatherStates = [
    WeatherData(
      temperature: '17°C',
      windSpeed: '26 MPH / NW',
      irradiation: '15.20 w/m²',
      weatherIcon: Icons.wb_cloudy,
      iconColor: Colors.orange,
      thermometerColor: Colors.blue,
    ),
    WeatherData(
      temperature: '30°C',
      windSpeed: '26 MPH / NW',
      irradiation: '15.20 w/m²',
      weatherIcon: Icons.wb_sunny,
      iconColor: Colors.orange,
      thermometerColor: Colors.red,
    ),
    WeatherData(
      temperature: '19°C',
      windSpeed: '26 MPH / NW',
      irradiation: '15.20 w/m²',
      weatherIcon: Icons.nightlight_round,
      iconColor: Colors.grey,
      thermometerColor: Colors.teal,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _weatherStates.length;
      });
      _startAnimation();
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentWeather = _weatherStates[_currentIndex];

    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2E63F7), Color(0xFFB982D9)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 140.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  bottomLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0, 0.3),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              ),
                            );
                          },
                          child: Text(
                            currentWeather.temperature,
                            key: ValueKey(currentWeather.temperature),
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Module Temperature',
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey[600],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: ScaleTransition(
                          scale: animation,
                          child: child,
                        ),
                      );
                    },
                    child: Icon(
                      Icons.thermostat,
                      key: ValueKey(currentWeather.thermometerColor),
                      color: currentWeather.thermometerColor,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 148.w,
            right: 0,
            top: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.air, color: Colors.white, size: 14),
                            SizedBox(width: 4.w),
                            Expanded(
                              child: Text(
                                currentWeather.windSpeed,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Wind Speed & Direction',
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Color(0xFFC2CEFF),
                                Color(0xFF728DF8),
                                Color(0xFFC2CEFF),
                                Colors.transparent,
                              ],
                              stops: const [0.0, 0.3, 0.5, 0.7, 1.0],
                            ),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.white,
                              size: 14,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              currentWeather.irradiation,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Effective Irradiation',
                          style: TextStyle(
                            fontSize: 9.sp,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: RotationTransition(
                          turns: animation,
                          child: child,
                        ),
                      );
                    },
                    child: Icon(
                      currentWeather.weatherIcon,
                      key: ValueKey(currentWeather.weatherIcon),
                      color: currentWeather.iconColor,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherData {
  final String temperature;
  final String windSpeed;
  final String irradiation;
  final IconData weatherIcon;
  final Color iconColor;
  final Color thermometerColor;

  WeatherData({
    required this.temperature,
    required this.windSpeed,
    required this.irradiation,
    required this.weatherIcon,
    required this.iconColor,
    required this.thermometerColor,
  });
}
