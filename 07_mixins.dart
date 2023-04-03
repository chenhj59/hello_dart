import '04_classes.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronuts：$astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted{
  // ...

  PilotedCraft(super.name, DateTime super.launchDate, this.altitude);
}
