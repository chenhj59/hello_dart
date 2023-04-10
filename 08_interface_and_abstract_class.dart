import '04_classes.dart';

class MockSpaceship implements Spacecraft {
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;

  MockSpaceship(this.name, this.launchDate) {}

  void describe() {
    print('MockSpaceship');
  }
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('========');
    describe();
    print('========');
  }
}
