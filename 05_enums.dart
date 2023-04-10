enum PlanetType { terrestrial, gas, ice }

/// Enum that enumerates the  different planets in our solar system
/// and some of their properties
enum Planet {
  earth(hasRings: false, planetType: PlanetType.terrestrial, moons: 1), // 位置错位也可行
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ...
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  // A constant generating constructor
  const Planet(
      // {}：字典映射; requried：要求必须有
      {required this.planetType,
      required this.moons,
      required this.hasRings});

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      PlanetType == PlanetType.gas || PlanetType == PlanetType.ice;
}

void main() {
  final yourPlanet = Planet.earth;

  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }
}
