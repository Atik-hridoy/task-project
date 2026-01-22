import 'package:flutter/material.dart';
import 'tab_bar_widget.dart';
import 'electricity_chart_widget.dart';
import 'source_load_tabs_widget.dart';

class ElectricitySectionWidget extends StatelessWidget {
  const ElectricitySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TabBarWidget(),
        const ElectricityChartWidget(),
        const SourceLoadTabsWidget(),
      ],
    );
  }
}
