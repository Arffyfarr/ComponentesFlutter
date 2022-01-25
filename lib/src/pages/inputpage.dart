import 'package:flutter/material.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String dropdownValue = 'Volar';
  String nombre = '';
  int totalNom = 0;
  String email = '';
  DateTime now = new DateTime.now();
  DateTime? _dateTime;
  dynamic fecha = '15/12/1999';
  final myController = TextEditingController();
  final controllerFecha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListBody(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                labelText: 'Nombre',
                icon: Icon(Icons.account_circle_sharp),
                suffixIcon: Icon(Icons.accessibility_outlined),
              ),
              controller: myController,
              /*onEditingComplete: () {
                nombre = myController.text;
              },*/
              onChanged: (value) {
                nombre = value;
                totalNom = value.length;
                setState(() {});
              },
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 40.0, top: 40.0)),
                Text(
                  'Sólo es el nombre',
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                //Padding(padding: EdgeInsets.only(left: 180)),
                Text('Letras $totalNom'),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                labelText: 'Email',
                icon: Icon(Icons.mail),
                suffixIcon: Icon(Icons.alternate_email),
              ),
              onChanged: (value) {
                email = value;
                setState(() {});
              },
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                labelText: 'Password',
                icon: Icon(Icons.lock), //canviar icono
                suffixIcon: Icon(Icons.lock_open),
              ),
              obscureText: true,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                labelText: 'Fecha de nacimiento',
                icon: Icon(Icons.calendar_today),
                suffixIcon: Icon(Icons.perm_contact_calendar_rounded),
              ),
              readOnly: true,
              controller: controllerFecha,
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1939, 9, 1),
                  lastDate: DateTime(now.year, now.month, now.day),
                );
                /*setState(() {
                  controllerFecha.text = fecha;
                });*/
                if (picked != null) {
                  setState(() {
                    fecha = picked.toString();
                    controllerFecha.text = fecha;
                  });
                } else {
                  print('No va');
                }
                setState(() {});
                /*
                setState(() {
                  _dateTime;
                });*/
                /*DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1939, 9, 1),
                    maxTime: DateTime(now.year, now.month, now.day),
                    onChanged: (date) {
                  //print('change $date');
                }, onConfirm: (date) {
                  setState(() {});
                  //print('confirm $date');
                }, currentTime: DateTime.now(), locale: LocaleType.es);*/
              },
              /*
              onChanged: (dynamic val) {
                val = _dateTime;
                setState(() {});
              },*/
              /*onEditingComplete: () {
                setState(() {});
              },*/
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Icon(Icons.select_all),
                Padding(padding: EdgeInsets.only(left: 20)),
                Expanded(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    //hint: Icon(Icons.ac_unit_outlined),
                    icon: const Icon(Icons.arrow_drop_down),
                    elevation: 5,
                    /*
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    */
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>[
                      'Volar',
                      'Rayos X',
                      'Super Aliento',
                      'Super Fuerza'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text('Nombre es: $nombre'),
            ]),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'Email: $email',
                  style: TextStyle(color: Colors.grey),
                ),
                //Padding(padding: EdgeInsets.only(left: 140)),
                Spacer(),
                Text(
                  '$dropdownValue',
                  //textAlign: TextAlign.end,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
