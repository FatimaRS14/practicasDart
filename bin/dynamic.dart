void main() {
 // Usando variables dinamicas
  //var x;
  //Si fuera var no se podria cambiar tipo de dato solo el contenido 
  dynamic x;
  //Le asignamos un valor String a x 
  
  x= 'Hercules';

  print('El valor de x es: $x');
  
  x = 12.45;
  print('El valor de x es: $x');
  
  //Cambiamos contenido y tipo 
  x= true;
  print('El valor de x es: $x');
 
}
