void main(){
  //Se tiene que terminar en punto y coma como java
  //Se tiene aque poner el simbolo de pesos para umprimir la variable si esque esta esta dentro de las comillas 
  //Var depende del tipo de ra variable que se defina
  var x = 'Fatty';
  int num1, num2;
  var num3;
  
  print('Hola mundo Dart, bienvenida $x');
  //Si es que no esta dentro de comillas solo se coloca la varible
  print(x);
  num1 = 12;
  num2 = num1 * 2;
  print('num1: $num1, num2: $num2');
  // num3 es dynamic, pero sera double por el resultado de la division
  num3 = num1 / num2;
  print('num3: $num3');
}