import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Programa Layout'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 218, 160, 210),
        ),
        body: Column(
          children: [
            // Layout Superior
            Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                child: const Text(
                  'Layout Superior',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            // Seção Central
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  width: 250,
                  height: 400,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 3,
                    ),
                  ),
                  child: const Text(
                    'Meu Aplicativo',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            // Layout Inferior
            Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                child: const Text(
                  'Layout Inferior',
                  style: TextStyle(fontSize: 15,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}