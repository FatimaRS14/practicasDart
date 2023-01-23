void main() {
  //Independientemente del tipo de dato si se quiere que el valor sea nulo te tien que poner el simbolo de ? 
   bool? x;
    //algo que cambia el valor x
 // x = false;
  
  if ( x == null){
    print('La variable x tiene un valor nulo');
  }
  else{
    print('La variable x no tiene un valor nulo');
    if( x ) {
      print ('X es verdadera');
    }
    else{ 
    print ('X es falsa');
    }
    
  }
}