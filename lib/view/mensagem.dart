import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:toast/toast.dart';

mixin Mensagem {
  // Resto do código do widget

  void showMensagem(String msg, context, {int? duration, int? gravity}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM, //
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        textColor: Theme.of(context).primaryColor,
        fontSize: 16.0,);

    /*
    Toast.show(
      msg,      
      duration: duration ?? Toast.lengthLong,
      gravity: gravity ?? Toast.bottom,
      backgroundColor: Colors.orangeAccent,
      textStyle: Colors.black,
      backgroundRadius: 2.0,
    );
    */
  }
}
