import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'tela5.dart';

class tela1 extends StatefulWidget {
  const tela1({super.key});

  @override
  State<tela1> createState() => _HomePageState();
}

class _HomePageState extends State<tela1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
        backgroundColor: Colors.green
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.house,
              size: 120.0,
              color: Colors.red,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/2'
                  );
                },
                child: const Text('IMC')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/3'
                  );
                },
                child: const Text('Contador')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/4'
                  );
                },
                child: const Text('Cadastro de usuário')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/5'
                  );
                },
                child: const Text('Cadastro de produto')
            ),
          ],
        ),
      ),
    );
  }
}
