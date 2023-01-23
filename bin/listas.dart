void main() {
//Creando una lista can multiples tipos de datos
  List misMascotas = [
    1,
    'Apolo',
    'perro',
    'Doverman',
    1.2,
    2,
    'A-xian',
    'gato',
    'gato',
    0.4,
    3,
    'Coqueta',
    'perro',
    'pastor belga',
    3.5,
    4,
    'Wen',
    'perro',
    'electrico',
    2.5
  ];
  print('Lista de mascotas: ');
  print(misMascotas);

  var longitud = misMascotas.length;
  print('Los datos de mis mascotas son: $longitud');
  //Agregando datos de otra mascota
  //Solo se puede añadir un dato a ala vez
  misMascotas.add(5);
  misMascotas.add('P-chan');
  misMascotas.add('cerdo');
  misMascotas.add('No mi acuerdo');
  misMascotas.add(3);

  print('La nueva lista de mascotas: ');
  print(misMascotas);
  longitud = misMascotas.length;
  print('El numero de elementos en la lista son: $longitud');

//------------------------------------------------------------------------------------------------------------
  //Trabajand con una lista con un tipo de dato definido
  List<int> numeros = [1, 2, 3, 4, 5];
  //No se puede agregar valores que no sean int
  //numeros.add(14.25);

  if (numeros.isEmpty) {
    print('La lista numeros esta vacia');
  }
  if (numeros.isNotEmpty) {
    print('La lista de numeros no esta vacia');
  }

  //var primero = numeros.first;
  print('El primer numero es: ${numeros.first}');
  print('El ultimo numero es: ${numeros.last}');
  print('La posicion del numero 3 es: ${numeros.indexOf(3)}');
  numeros.add(3);
  numeros.add(6);
  numeros.add(7);
  numeros.add(3);
  print('La nueva lista de numeros es: ');
  print(numeros);
  print('La ultima posicion del elemento 3 es: ${numeros.lastIndexOf(3)}');
  
  //Agregando elementos de forma dinamica
  //si no se declara la nueva variable no sirve por lo tanto no esta construida
  //List<int> otraLista = [10]; esta es una variable no nulable
  List<int> otraLista = [10];
  for(int i=2; i<= 10; i++){
    otraLista.add(10 * i);
  
  }
  
  print('La tabla de multiplicar del 10 es: ');
  print(otraLista);
  
  
  
  
  
  
  
  
   
}
