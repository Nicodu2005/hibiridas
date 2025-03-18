import 'dart:io';

import 'package:proyecto/proyecto.dart' as proyecto;
// nicolas duran poveda 
// c.c  1018409696
// materia GRUPO B DESARROLLO DE APLICACIONES MÓVILES HÍBRIDAS
// grupo av68-239-7b NB

void main(List<String> arguments) {
  bool desicion = true;

  while (desicion == true) {
    print("Bienvenido a la calculadora escoje un numero");
    print("1. sumar ");
    print("2. Restar");
    print("3. Multiplicar");
    print("4 dividir ");
    print("5 salir ");
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("cuantos numeros desea sumar ");
        int cantidad = int.parse(stdin.readLineSync()!);
        int suma = 0;
        for (int i = 0; i < cantidad; i++) {
          print("dijite el numero ${i + 1}");
          int numeros = int.parse(stdin.readLineSync()!);
          suma += numeros;
        }
        print("la suma es $suma");
        break;

      case 2:
        print("¿Cuántos números desea restar?");
        int cantidad = int.parse(stdin.readLineSync()!);
        int resta = 0;
        for (int i = 0; i <= cantidad; i++) {
          print("dijite el numero ${i + 1}");
          int numeros = int.parse(stdin.readLineSync()!);
          if (i == 1) {
            resta = numeros; // Inicializamos con el primer número
          } else {
            resta -= numeros; // Restamos los siguientes números
          }
        }
        print("La resta es $resta");
        break;

      case 3:
        print("cuantos numeros desea multiplicar ");
        int cantidad = int.parse(stdin.readLineSync()!);
        int multiplicacion = 1;
        for (int i = 0; i < cantidad; i++) {
          print("dijite el numero ${i + 1}");
          int numeros = int.parse(stdin.readLineSync()!);
          multiplicacion *= numeros;
        }
        print("la multiplicacion es $multiplicacion");
        break;
      case 4:
        print("dijite el numero 1  ");
        int num1 = int.parse(stdin.readLineSync()!);

        print("dijite el numero 2  ");
        int num2 = int.parse(stdin.readLineSync()!);
        if (num2 == 0) {
          print("no se puede dividir por 0");
        } else {
          double division = num1 / num2;

          print("la division es $division");
        }
        break;

      case 5:
        desicion = false;
        break;

      default:
        print("opcion no valida");
    }
  }
}
