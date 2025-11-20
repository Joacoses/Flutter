void main() {
  //* extends
  final windPlant = WindPlant(initialEnergy: 110);
  print('wind: ${chargePhone(windPlant)}');

  //* implements
  final nuclearPlant = NuclearPlant(energyLeft: 100);
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

// la idea es que aplique el principio de inversión de dependencias
// una clase de más alto nivel (chargePhone) no debe depender de
// una clase de más bajo nivel (WindPlant), ambas deben depender
// de una abstracción (EnergyPlant)
//! Al hacerlo de esta manera, chargePhone puede trabajar con cualquier tipo de planta de energía
//! si pusieramos WindPlant en el parámetro, solo podría trabajar con plantas eólicas
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy to charge the phone');
  }
  return plant.energyLeft -= 10;
}

// Definición del enum, para futuro solo hara falta actualizarlo aquí
// ya que extenderemos esta clase abstracta y depende de EnergyPlant
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear, wind, water

  //! Constructor -- Definemos los parámetros que deben tener todas las clases hijas
  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  // Método abstracto
  void consumeEnergy(double amount);
}

// extends o implements
//* extends
// cuando extendemos de una clase abstracta, significa que
// yo heredo todo la clase padre (la abstracta)
class WindPlant extends EnergyPlant {
  //
  WindPlant({required double initialEnergy})
      //! necesitamos pasar los parámetros al constructor de la clase padre
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//* implements
class NuclearPlant implements EnergyPlant {
  double energyLeft;
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}


//! La diferencia entre implements y extends es que
//! extends hereda todo el comportamiento de la clase padre
//! implements podemos definir nuestro propio comportamiento (elegimos qué y cómo implementar)