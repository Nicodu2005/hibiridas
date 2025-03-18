import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Calculadora', home:  CalculadoraHomePage());
  }
}

class CalculadoraHomePage extends StatefulWidget {
  @override
  _CalculadoraHomePageState createState() => _CalculadoraHomePageState();
}

class _CalculadoraHomePageState extends State<CalculadoraHomePage> {
  String resultado = "0";
  String input = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora Flutter')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Text(
              resultado,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
Row(
  children: <Widget>[
    crearBoton("7"),
    crearBoton("8"),
    crearBoton("9"),
    crearBoton("/"),
  ],
),
Row(
  children: <Widget>[
    crearBoton("4"),
    crearBoton("5"),
    crearBoton("6"),
    crearBoton("*"),
  ],
),
Row(
  children: <Widget>[
    crearBoton("1"),
    crearBoton("2"),
    crearBoton("3"),
    crearBoton("-"),
  ],
),
Row(
  children: <Widget>[
    crearBoton("."),
    crearBoton("0"),
    crearBoton("C"),
    crearBoton("+"),
  ],
),
Row(
  children: <Widget>[
    crearBoton("="),
  ],  
),
        ],
      )
    );
  }


Widget crearBoton(String texto){
  return Expanded(child: OutlinedButton(onPressed: () => botonPresionado(texto), 
  child:  Text( texto,style: TextStyle(fontSize: 24),
  ),
  style: OutlinedButton.styleFrom(
    padding: EdgeInsets.all(24)
  ),
  ),
  );
}
void botonPresionado(String texto){
  setState((){
    if(texto=="C"){
      resultado ="0";
      input="";
    }else if(texto=="="){
      try{
        resultado = evaluar(input);
      }catch (e){
        resultado = "Error";
      }
    }else{
      input += texto;
      resultado=input;
    }

    });

  }
}

  
  String evaluar(String expresion){
  final evaluator= const ExpressionEvaluator();
  final expression = Expression.parse(expresion);
  var resultado = evaluator.eval(expression,{});
  return resultado.toString();
  }
