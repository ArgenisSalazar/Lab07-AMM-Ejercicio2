import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Plato {
  final String nombre;
  final String precio;
  final String imagen;

  Plato({required this.nombre,required this.precio,required this.imagen});
}

List<Plato> lista = [
  Plato(nombre: "mesa", precio: "50.5", imagen: ""),
  Plato(nombre: "maleta", precio: "20.5", imagen: ""),
  Plato(nombre: "cuaderno", precio: "12.2", imagen: ""),
  Plato(nombre: "lapiz", precio: "5.5", imagen: ""),
  Plato(nombre: "borrador", precio: "2.5", imagen: ""),
  Plato(nombre: "tajador", precio: "1.5", imagen: ""),
  Plato(nombre: "regla", precio: "3.25", imagen: ""),
  Plato(nombre: "libreria", precio: "58.5", imagen: ""),
  Plato(nombre: "audifono", precio: "25.2", imagen: ""),
  Plato(nombre: "mouse", precio: "20.5", imagen: "")
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 02',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejercicio 02'),
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.abc),
              title: Text(lista[index].nombre),
              subtitle: Text(lista[index].precio),
              onTap: (){
              },
            );
          },
        ),
      ),
    );
  }
}

