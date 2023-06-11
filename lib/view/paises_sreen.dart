import 'package:flutter/material.dart';
import 'package:siglas_paises_app/service/requisicao.dart';
import 'package:siglas_paises_app/view/menu.dart';
import 'paises_dados.dart';

class PaisesScreen extends StatelessWidget {
  const PaisesScreen({super.key, this.pais = ""});

  final String pais;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Siglas dos Países",
          //style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.refresh,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => PaisesScreen(pais: ""),
                    ));
              })
        ],
      ),
      body: PaisesDados(pais: pais),
      drawer: Menu(),
    );
  }
}
