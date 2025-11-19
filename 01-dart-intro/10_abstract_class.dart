void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  print(windPlant);

  print('wind: ${chargePhone(windPlant)}');
}


// la idea es que aplique el principio de inversión de dependencias
// una clase de más alto nivel (chargePhone) no debe depender de
// una clase de más bajo nivel (WindPlant), ambas deben depender
// de una abstracción (EnergyPlant)
double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy to charge the phone');
  }
  return plant.energyLeft -= 10;
}




// Definición del enum, para futuro solo hara falta actualizarlo aquí
// ya que extenderemos esta clase abstracta y depende de EnergyPlant
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type; //nuclear, wind, water

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  // Método abstracto
  void consumeEnergy(double amount);
}



// extends o implements
// cuando extendemos de una clase abstracta, significa que
// yo heredo todo la clase padre (la abstracta)
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
  : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}
