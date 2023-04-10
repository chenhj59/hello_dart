import '04_classes.dart';

class MockSpaceship implements Spacecraft {
  String name = '';
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;

  void describe() {}
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('========');
    describe();
    print('========');
  }
}

