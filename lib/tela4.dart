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

class tela4 extends StatefulWidget {
  const tela4({super.key});

  @override
  State<tela4> createState() => _HomePageState();
}

class _HomePageState extends State<tela4> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void cadastrar(){
    emailController.text = "";
    senhaController.text = "";
    setState((){
      _textoInfo = "Dados cadastrados com sucesso";
    });
  }

  void _Limpar() {
    emailController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de usuário"),
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
                  labelText: "Email",
                  icon: Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Icon(Icons.email),
                  )
              ),
              controller: emailController
            ),
            TextField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Icon(Icons.lock),
                    )
                ),
                controller: senhaController,
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
