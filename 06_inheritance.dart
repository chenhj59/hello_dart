import '04_classes.dart';

// 子类在必须要求时，才去扩展
class Oribiter extends Spacecraft {
  double altitude;

  Oribiter(super.name, DateTime super.launchDate, this.altitude);
}
