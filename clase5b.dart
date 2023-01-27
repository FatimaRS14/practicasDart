import 'dart:io';

void main(List<String> arguments) {
  // var unaLaptop =  new Computadora();//El new es opcional
  var unaLaptop = Computadora(
      marca: 'Allienware',
      cpu: 'Intel core i9',
      ram: 32); //parametros nombrados
  print('Informacion de la laptop que se vende en internet: $unaLaptop');
  stdout.write('Esta computadora es adecuada para la materia DMM?: ');

  String? respuesta = stdin.readLineSync();
  // String respuesta = si;
  if (respuesta != null) {
    if (respuesta.contains('Si')) {
      unaLaptop.configurarAdecuada = true;
    } else {
      unaLaptop.configurarAdecuada = false;
    }
  } else {
    print('No se puede saber si la PC es adecuada pòr que recibio null');
  }
  print('laptop1 es adecuada para tu material: ${unaLaptop.esAdecuada}');

  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;
  print('Informacion de unaLaptop: $unaLaptop');
}

class Computadora {
  //Campos
  //La variable se inicializa o de pone de manera nulable
  //Pra que la variable sea privada es String? _marca;
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false;

  //Constructor
  /* Computadora(String m, String c, int r){
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }
  */
  //forma corta de escribir el constructor con parametros nombrados
  Computadora({this.marca, this.cpu, this.ram});

  @override
  String toString() {
    return 'Marca: $marca, CPU: $cpu, RAM: $ram, es adecuada para DMM: $adecuada';
  }

  // Getter de la variable adecuada
  bool get esAdecuada {
    return adecuada;
  }

  //Setter de la variable adecuada
  //Se configura la adecuacion
  set configurarAdecuada(bool valor) {
    adecuada = valor;
  }
}
