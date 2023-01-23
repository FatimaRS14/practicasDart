import 'dart:collection';

void main(List<String> arguments) {
  //labThings es una lista de dynamic
  var labThings = [
    'chairs',
    'tables',
    'PC',
    'laptops',
    'code',
    'software',
    'mouse',
    'cable'
  ];
  print('Imprimiendo el contenido de labThings con print: $labThings');

  print('Imprimiendo el contenido de labThings con for: ');
  for (var e in labThings) {
    print(e);
  }

  var i = 1;
  var mapLabThings = {for (var e in labThings) i++: e};
  print('Contenido del mapa: $mapLabThings'); //Tiene pares (clave-valor)

  i = 1;
  var cosasCon5Letras = {
    for (var e in labThings)
      if (e.length >= 5 && e.length <= 6) i++: e
  };
  print('Cosas del lab con 5 a 6 letras: $cosasCon5Letras');

  //Agregar vaores a un mapa
  cosasCon5Letras[5] = 'control';
  print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  //Agregar solo si no está en el mapa y recuperar ese valor
  var valor1 = cosasCon5Letras.putIfAbsent(6, () => 'virus');
  print('Valor obtenido del mapa: $valor1');
  print('Actualización de cosas del lab con 5 o 6 letras: $cosasCon5Letras');

  //Obtencion de todas las keys del mapa
  print('Claves del mapa mapLabThings.keys');
  //var para que sea de manera dinamica
  //Solo regresa las claves del mapa
  for (var key in mapLabThings.keys) {
    print(key);
  }

  //Obtencion de todos los values del mapa
  //se regresan solo los valores
  print('Valores del mapa mapLabThings.values');
  for (var value in mapLabThings.values) {
    print(value);
  }

  //Uso de forEach
  //forEach es una propiedad de mapas
  print('Imprimiendo mapLabThings con forEach');
  mapLabThings.forEach((k, v) {
    print('Clave: $k, Valor: $v');
  });

  //Cambiando los valores del mapa
  mapLabThings.forEach((key, value) {
    if (key % 2 == 0) mapLabThings[key] = '';
  });
  print('Nuevo contenido de mapLabThings: $mapLabThings');

  //Buscando keys en el mapa mapLabThings
  print(('El mapa contiene la clave 1?: ${mapLabThings.containsKey(1)}'));

  //Buscando un valor en el mapa mapLabThings
  print(
      'El mapa contiene un valor code?: ${mapLabThings.containsValue('code')}');

  //SplayTreeMap para ordenar un mapa
  var frutas = SplayTreeMap();
  frutas[4] = 'Manzana';
  frutas[1] = 'Naranja';
  frutas[2] = 'Mango';
  frutas[5] = 'Papaya';
  frutas[0] = 'Platano';
  frutas[3] = 'Fresa';
  //El mapa se ordena por claves automaticamente
  print('Mapa de frutas: $frutas');

  var frutas2 = Map.fromEntries(frutas.entries.toList());
  print('Frutas2: $frutas2');
  //Ordenar por valores
  //fromEntries mapa en un mapa
  var frutasOrdenadas = Map.fromEntries(
      frutas.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
  //Se convierte en arreglo para dos entradas
  print('Frutas ordenadas por valor: $frutasOrdenadas');
}
