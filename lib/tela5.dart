import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'tela1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class tela5 extends StatefulWidget {
  const tela5({super.key});

  @override
  State<tela5> createState() => _HomePageState();
}

class _HomePageState extends State<tela5> {
  TextEditingController idController = new TextEditingController();
  TextEditingController produtoController = new TextEditingController();
  TextEditingController precoController = new TextEditingController();
  String _textoInfo = "Informe os dados do produto";

  void cadastrar(){
    idController.text = "";
    produtoController.text = "";
    precoController.text = "";
    setState((){
      _textoInfo = "Produto cadastrado com sucesso";
    });
  }

  void _Limpar() {
    idController.text = "";
    produtoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Informe os dados do produto";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de produto"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(onPressed: _Limpar, icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Id",
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Icon(Icons.email),
                    )
                ),
                controller: idController
            ),
            TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Produto",
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Icon(Icons.email),
                    )
                ),
                controller: produtoController
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Preço',
                  icon: Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Icon(Icons.lock),
                  )
              ),
              controller: precoController,
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: cadastrar,
                    child: const Text("Cadastrar")
                ),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}
