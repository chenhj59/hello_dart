import '04_classes.dart';

// 插件
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronuts：$astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  // ...

  PilotedCraft(super.name, DateTime super.launchDate);
}

void main() {
  var voyager = PilotedCraft('Voyager I', DateTime(1977, 9, 5)); // 构建对象无需new
  voyager.describe();
  voyager.describeCrew();
}
