import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      ),
      home: const MyHomePage(title: 'Inicio de este inge.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _nombre = '';

  //Contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //Mostrar mi nombre
  void _mostrarNombre() {
    setState(() {
      _nombre = 'Alan Chan';
    });
  }

  //Ocultar mi nombre
  void _ocultarNombre() {
    setState(() {
      _nombre = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Inge ha presionado el boton esta cantidad de veces:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),

            //Botón ElevatedButton para mostar
            ElevatedButton(
              onPressed: _mostrarNombre,
              child: const Text('Mostrar Nombre'),
            ),
            const SizedBox(height: 10),

            //Botón outlinedButton para ocultar
            OutlinedButton(
              onPressed: _ocultarNombre,
              child: const Text('Ocultar Nombre'),
            ),
            const SizedBox(height: 10),

            //Apartado para mi nombre
            Text(
              _nombre,
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      // Botón para incrementar
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}