import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Requisicao {
  static Future<List> requisicaoPaises() async {
    Map paises = Map();
    var apiUrl = Uri.parse('https://api.nobelprize.org/v1/country.json');

    http.Response response = await http.get(apiUrl);
    debugPrint("Resultado: ${response.body}");

    if (response.statusCode == 200) {
      paises = json.decode(response.body);
      return paises.values.first;
    } else {
      throw Exception("Falhou");
    }
  }
}
