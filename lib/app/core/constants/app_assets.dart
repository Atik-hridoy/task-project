class AppAssets {
  static const String _imagesPath = 'assets/images/';
  static const String _iconsPath = 'assets/icons/';
  
  static const String splash = 'assets/icons/splash.png';
  static const String power = 'assets/icons/power.png';
  static const String plant = 'assets/icons/plant.png';
  static const String livePR = 'assets/icons/live_pr.png';
  static const String cumulativePR = 'assets/icons/cumulative_pr.png';
  static const String returnPV = 'assets/icons/return_pv.png';
  static const String totalEnergy = 'assets/icons/total_energy.png';
  
  // Data View Icons
  static const String dataView = 'assets/icons/data_view.png';
  static const String dataType2 = 'assets/icons/data_type_2.png';
  static const String dataType3 = 'assets/icons/data_type_3.png';
  
  // Action Button Icons
  static const String analysisPro = 'assets/icons/analysis_pro.png';
  static const String gGenerator = 'assets/icons/g.generator.png';
  static const String plantSummery = 'assets/icons/ptant_summery.png';
  static const String naturalGas = 'assets/icons/natural_gas.png';
  static const String dGenerator = 'assets/icons/genarator.png';
  static const String water = 'assets/icons/water.png';
  
  static String image(String name) => '$_imagesPath$name';
  static String icon(String name) => '$_iconsPath$name';
}
