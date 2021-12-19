import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancelar"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Ok"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Titulo"),
    content: SingleChildScrollView(
      child: ListBody(
        children: const <Widget>[
          Text('Este es el contenido de la caja de la alerta'),
          FlutterLogo(
            size: 120,
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
          //icon: Text('Mostrar Alerta'),
          child: Text('Mostrar Alerta'),
          textColor: Colors.white,
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //iconSize: 40,
          onPressed: () => {
            showAlertDialog(context),
          },
        ),
      ),
      //no ponemos el body todavia
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location_rounded),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

/*
//Prova --- La clolumna no se redimensiona

  AlertDialog alert = AlertDialog(
    title: Text("Titulo"),
    content: Column(
      children: <Widget>[
        Text("Este es el contenido de la caja de la alerta"),
        FlutterLogo(
          size: 120,
        ),
      ],
      //mainAxisSize: Size(20.0, 20.0),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
*/