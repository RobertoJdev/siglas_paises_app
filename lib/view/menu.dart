import 'package:flutter/material.dart';
import 'package:siglas_paises_app/view/ajuda.dart';
import 'package:siglas_paises_app/view/paises_sreen.dart';
//import 'package:toast/toast.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'mensagem.dart';

class Menu extends StatelessWidget with Mensagem {
  Menu({super.key});

  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //ToastContext().init(context);
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              alignment: Alignment.center,
              height: 100.0,
              child: const Text(
                "Menu",
              ),
            ),
            ListTile(
              title: const Text(
                "Pesquisar",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () => {
                Navigator.pop(context),
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                    title: const Text("Digite o nome do país"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          controller: search,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              showMensagem("Operação cencelada.", context);
                            },
                            child: const Text(
                              'Cancelar',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            style: Theme.of(context).textButtonTheme.style,
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PaisesScreen(pais: search.text)));
                              showMensagem("Pesquisa realizada para o país ${search.text}",context);
                            },
                            child: const Text(
                              'Ok',
                              style: TextStyle(color: Colors.orangeAccent),
                              //style: TextStyle(
                              //color: Colors.blueAccent,
                              //),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              },
              leading: const Icon(Icons.search),
            ),
            ListTile(
              title: const Text(
                "Ajuda",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () => {
                Navigator.pop(context),
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Ajuda()))
              },
              leading: const Icon(
                Icons.help,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
