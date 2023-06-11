import 'package:flutter/material.dart';
import 'package:siglas_paises_app/service/requisicao.dart';

class PaisesDados extends StatefulWidget {
  const PaisesDados({super.key, this.pais = ""});

  final String pais;

  @override
  State<PaisesDados> createState() => _PaisesDadosState();
}

class _PaisesDadosState extends State<PaisesDados> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: Requisicao.requisicaoPaises(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              List paises = snapshot.requireData;
              return _listPaises(_filtraPais(widget.pais, paises, context));
            } else {
              return Container(
                child: const Text("Nada retornado"),
              );
            }
          },
        )
      ],
    );
  }

  Widget _listPaises(List paises) {
    //Color? corTexto = Theme.of(context).textTheme.bodyLarge.color;

    return paises != null
        ? Flexible(
            child: ListView.builder(
            itemCount: paises.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text(
                      "${paises[index]["name"]}",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${paises[index]["code"] ?? "---"}",
                          //style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
              );
            },
          ))
        : Container(
            alignment: Alignment.center,
            child: const Text("Carregando..."),
          );
  }

  List _filtraPais(String pais, List paises, BuildContext context) {
    List filtro = [];

    String paisFormatado = "";

    if (pais != "") {
      String primeiraLetra = pais.substring(0, 1);
      paisFormatado =
          pais.replaceFirst(primeiraLetra, primeiraLetra.toUpperCase());
    }

    paises.forEach((p) {
      if (p["name"] == paisFormatado) {
        filtro.add(p);
      }
    });
    return filtro.isEmpty ? paises : filtro;
  }
}
