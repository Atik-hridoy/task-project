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
  
  static String image(String name) => '$_imagesPath$name';
  static String icon(String name) => '$_iconsPath$name';
}
