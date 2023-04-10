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

void main() {
  var voyager = MockSpaceship('Voyager I', DateTime(1977, 9, 5)); // 构建对象无需new
  voyager.describe();
}
