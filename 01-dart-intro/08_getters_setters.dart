void main() {
  final mySquare = new Square(side: 10);
  // con el override
  print(mySquare);

  // sin el override
  mySquare.side = 5;
  print('area: ${mySquare.calculateArea()}');
  print('area: ${mySquare.area}');

  //privado
}

class Square {
  //publica
  //double side; //side*side

  //privada
  double _side;

  // publico
  //Square({required this.side});

  // privado
  Square({required double side}) : _side = side;

  // public
  /* double get area {
    return side * _ide;
  } */
  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;

  }

  // public
  /* double calculateArea() {
    return side * side;
  } */
  double calculateArea() {
    return _side * _side;
  }

  @override
  String toString() {
    return 'Square: ${calculateArea()}';
  }
}
